# frozen_string_literal: true

module Computer
  module OperatingSystems
    module MacOs
      class HomeBrew
        def define
          <<~DEFINE.strip
            The missing package manager for macOS (or Linux)
            https://brew.sh/
          DEFINE
        end
      end
    end
  end
end
