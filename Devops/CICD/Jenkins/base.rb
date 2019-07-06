module Devops
  module CICD
    module Jenkins
      class Base
        def reference
          <<~REFERENCE.strip
            https://jenkins.io/
          REFERENCE
        end
      end
    end
  end
end