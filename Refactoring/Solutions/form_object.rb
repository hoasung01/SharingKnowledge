# frozen_string_literal: true

module Solutions
  class FormObject
    def usage
      <<~USAGE.strip
        1. keep business out of Controllers and Views
        2. add validation support to plain old Ruby objects
        3. display form validation errors using Rails conventions.
        4. set the stage for `Extracted Validator`
      USAGE
    end

    def apply_for(*code_smells); end
  end
end
