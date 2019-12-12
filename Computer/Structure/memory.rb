# frozen_string_literal: true

module Computer
  module Structure
    class Memory
      TYPES = %w[PRIMARY_MEMORY SECONDARY_MEMORY].freeze
      PRIMARY_MEMORY = %w(RAM ROM)
      SECONDARY_MEMORY= %w(HARD_DRIVE CD DVD FLOPPY_DISK)

      def define
        MemoryType.new(TYPES)
      end
    end

    MemoryType = Struct.new(:type)
    # puts Memory.new.define
  end
end
