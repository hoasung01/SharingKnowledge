module Computer
  module OperatingSystems
    module MacOs
      class HomeBrew
        def define
          <<~DEFINE.strip
            The missing package manager for macOS (or Linux)
          DEFINE
        end
      end
    end
  end
end