# frozen_string_literal: true

module Databases
  module DocumentStores
    module MongoDB
      class Base
        def reference
          <<~REFERENCE.strip
            https://www.mongodb.com/
          REFERENCE
        end
      end
    end
  end
end
