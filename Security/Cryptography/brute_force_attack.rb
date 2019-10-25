# frozen_string_literal: true

module Security
  module Cryptography
    class BruteForceAttack
      def define
        <<~DEFINE.strip
          a brute-force attack consists of an attacker
          submitting many passwords or passphrases with the hope
          of eventually guessing correctly.
        DEFINE
      end
    end

    # puts BruteForceAttack.new().define
  end
end
