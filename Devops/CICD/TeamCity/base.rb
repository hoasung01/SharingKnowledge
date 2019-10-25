# frozen_string_literal: true

module Devops
  module CICD
    module TeamCity
      class Base
        def reference
          <<~REFERENCE.strip
            https://www.jetbrains.com/teamcity/
          REFERENCE
        end
      end
    end
  end
end
