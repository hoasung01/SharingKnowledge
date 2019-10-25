# frozen_string_literal: true

module ProgrammingLanguage
  module Ruby
    module TIL
      module Y2019
        def find_where_method_defined
          Example.new.method(:method).source_location
          # => ["(irb)", 11]
        end

        class Example; def method() end end
      end
    end
  end
end
