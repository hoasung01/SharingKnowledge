# frozen_string_literal: true

module Solutions
  class ParameterObject
    def usage
      <<~USAGE.strip
        reduce a number of input paremeter to a method
      USAGE
    end

    def apply_for(*code_smells); end
  end
end
