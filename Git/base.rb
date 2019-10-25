# frozen_string_literal: true

module Git
  class Base
    LIST = [
      'http://gitvisual.com',
      'https://marklodato.github.io/visual-git-guide/index-en.html',
      'https://agripongit.vincenttunru.com/',
      'https://learngitbranching.js.org/'
    ].freeze

    def reference
      LIST
    end
  end
end
