# frozen_string_literal: true

module CodeSmells
  class LargeClass
    def symptoms
      <<~SYMPTOMS.strip
        1. you can't easily describe what the class does in one sentence
        2. you can't tell what the class does without scrolling
        3. the class need to change for more than one reason
        4. the class has more than 7 methods
        5. the class has a total flog score of 50
      SYMPTOMS
    end
  end
end
