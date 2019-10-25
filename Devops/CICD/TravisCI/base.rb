# frozen_string_literal: true

module Devops
  module CICD
    module TravisCI
      class Base
        def reference
          <<~REFERENCE.strip
            https://travis-ci.org/
          REFERENCE
        end
      end
    end
  end
end
