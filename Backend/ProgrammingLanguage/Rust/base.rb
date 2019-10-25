# frozen_string_literal: true

module ProgrammingLanguage
  module Rust
    class Base
      def reference
        <<~REFERENCE.strip
          https://www.rust-lang.org/learn
        REFERENCE
      end
    end
  end
end
