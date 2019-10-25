# frozen_string_literal: true

module CodeSmells
  class Callback
    def symptoms
      <<~SYMPTOMS.strip
        1. callbacks which contain business logic
        2. attributes which allow certain callbacks to skipped
        3. callbacks which need to be invoked conditionally
      SYMPTOMS
    end

    def code_example
      <<~SAMPLE
        https://gist.github.com/hoasung01/77f666e928356162c9d76a4d3b58b37e
      SAMPLE
    end
  end
end
