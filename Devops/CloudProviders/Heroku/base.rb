# frozen_string_literal: true

module Devops
  module CloudProviders
    module Heroku
      class Base
        def reference
          <<~REFERENCE.strip
            https://www.heroku.com/
          REFERENCE
        end
      end
    end
  end
end
