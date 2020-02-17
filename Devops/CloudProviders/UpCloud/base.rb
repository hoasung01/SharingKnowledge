# frozen_string_literal: true

module Devops
  module CloudProviders
    module UpCloud
      class Base
        def reference
          <<~REFERENCE.strip
            https://https://upcloud.com//
          REFERENCE
        end
      end
    end
  end
end
