module SoftwareDesign
  module DesignPatterns
    module Creational
      class Singleton
        def definition
          RealWorldAnalogy.new(
            <<~DEFINE.strip
             a country can have only one officical goverment
            DEFINE
          )
        end

        RealWorldAnalogy = Struct.new(:context)

        # puts Singleton.new().definition
      end
    end
  end
end