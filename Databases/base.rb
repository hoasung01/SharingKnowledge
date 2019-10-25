# frozen_string_literal: true

module Databases
  class Base
    def reference
      <<~REFERENCE.strip
        https://db-engines.com
      REFERENCE
    end
  end
end
