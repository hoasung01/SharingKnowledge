# frozen_string_literal: true

module Databases
  module ContentStores
    module Jackrabbit
      class Base
        def reference
          <<~REFERENCE.strip
            http://jackrabbit.apache.org/jcr/index.html
          REFERENCE
        end
      end
    end
  end
end
