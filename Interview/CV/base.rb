module Interview
  module CV
    class Base
      def reference
        <<~REFERENCE.strip
          https://www.careercup.com/resume
        REFERENCE
      end
    end
  end
end