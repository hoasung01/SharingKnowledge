# frozen_string_literal: true

module CryptoCurrency
  module Libra
    class Base
      def reference
        <<~REFERENCE.strip
          https://libra.org
        REFERENCE
      end
    end
  end
end
