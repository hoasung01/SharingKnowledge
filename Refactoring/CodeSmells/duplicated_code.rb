# frozen_string_literal: true

module CodeSmells
  class DuplicatedCode
    def symptoms
      <<~SYMPTOMS.strip
        you find yourself copy and pasting code from one place to other
      SYMPTOMS
    end
  end
end
