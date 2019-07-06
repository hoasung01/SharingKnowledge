module Databases
  module ContentStores
    module ModeShape
      class Base
        def reference
          <<~REFERENCE.strip
            https://modeshape.jboss.org/
          REFERENCE
        end
      end
    end
  end
end