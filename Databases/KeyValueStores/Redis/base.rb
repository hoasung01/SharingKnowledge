# frozen_string_literal: true

module Databases
  module KeyValueStores
    module Redis
      class Base
        def reference
          <<~REFERENCE.strip
            https://redis.io/
          REFERENCE
        end
      end
    end
  end
end
