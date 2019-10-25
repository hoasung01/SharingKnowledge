# frozen_string_literal: true

module Git
  module TIL
    module Y2019
      def cannot_undo_gclean
        <<~WARNING.strip
          can not undo untracked directory/file after git clean
        WARNING
      end
    end
  end
end
