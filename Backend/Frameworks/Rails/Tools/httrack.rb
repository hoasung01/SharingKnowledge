# frozen_string_literal: true

module Frameworks
  module Rails
    module Tools
      class Httrack
        def self.yourself
          <<~DESCRIBE.strip
            It allows you to download a World Wide Web
            site from the Internet to a local directory,
            building recursively all directories,
            getting HTML, images, and other files
            from the server to your computer

            [reference: https://www.httrack.com/]
          DESCRIBE
        end
      end
    end
  end
end
