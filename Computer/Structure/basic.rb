module Computer
  module Structure
    class Basic
      CPU = %w(MEMORY_UNIT CONTROL_UNIT ARITHMETIC_LOGIC_UNIT)

      def define
        MainComponent.new('INPUT_UNIT', CPU, 'OUPUT_UNIT')
      end
    end

    MainComponent = Struct.new(:input_unit, :cpu, :output_unit)
    # puts Basic.new.define
  end
end