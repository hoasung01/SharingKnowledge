# frozen_string_literal: true

module ProgrammingLanguages
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
