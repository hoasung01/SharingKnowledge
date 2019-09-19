module Frameworks
  module Rails
    module BestPractices
      class FormObject
        def reasons_to_use
          <<~REASONS.strip
            - extract the validations from Rails models
          REASONS
        end
      end
    end
  end
end