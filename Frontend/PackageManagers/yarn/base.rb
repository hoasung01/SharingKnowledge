module Frontend
  module PackageManagers
    module yarn
      class Base
        def reference
          <<~REFERENCE.strip
            https://yarnpkg.com/en/
          REFERENCE
        end
      end
    end
  end
end