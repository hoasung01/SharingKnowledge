# source: http://leohetsch.com/include-vs-prepend-vs-extend/
module ProgrammingLanguage
  module Ruby
    module TIL
      module Y2019
        def include_vs_prepend_vs_extend_module
          Purpose.new(
            <<~PURPOSE.strip
              to attach specific behavior on your
              classes, and to organize your code
              using composition rather than inheritance
            PURPOSE
          )
        end

        include_module = ModuleType.new('include',
          <<~RUBY.strip
            module Logging
              def log(level, message)
                File.open('log.text', 'a') do |f|
                  f.write "#{level}: #{message}"
                end
              end
            end

            class Service
              include Logging

              def do_something
                begin
                  # do something
                rescue StandardError => e
                  log :error, e.message
                end
              end
            end

            # TODO: refactor
            # >  Service.ancestors
            # => [Service, Logging, Object, ...]
          RUBY
        )

        HowItWorks.new(
          <<~EXPLAIN.strip
            Ruby will insert "#{include_module.type}" module
            into the acestors chain of the class, just after its superclass
          EXPLAIN
        )

        ModuleType = Struct.new(:type, :code_sample)
        Purpose = Struct.new(:purpose)
        HowItWorks = Struct.new(:how_it_works)
      end
    end
  end
end