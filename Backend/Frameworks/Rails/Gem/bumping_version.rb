# frozen_string_literal: true

module Frameworks
  module Rails
    module Gem
      class BumpingVersion
        def define
          <<~DEFINE.strip
            Given a version number MAJOR.MINOR.PATCH, increment the:
            - MAJOR version when you make incompatible API changes,
            - MINOR version when you add functionality in a backwards-compatible manner, and
            - PATCH version when you make backwards-compatible bug fixes.
            Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.
          DEFINE
        end

        def reference
          <<~REFERENCE.strip
            sematic versioning: https://semver.org/
          REFERENCE
        end
      end
    end
  end
end
