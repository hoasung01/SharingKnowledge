# frozen_string_literal: true

module Devops
  module CICD
    module CircleCI
      class Base
        def reference
          <<~REFERENCE.strip
            https://circleci.com/
          REFERENCE
        end
      end
    end
  end
end
