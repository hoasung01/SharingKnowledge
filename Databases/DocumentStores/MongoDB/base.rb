module Databases
  module DocumenttStores
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