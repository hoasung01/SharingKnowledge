module Frontend
  module PackageManagers
    module npm
      class Base
        def reference
          <<~REFERENCE.strip
            https://www.npmjs.com/
          REFERENCE
        end
      end
    end
  end
end