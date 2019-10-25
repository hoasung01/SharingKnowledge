# frozen_string_literal: true

module CodeSmells
  class LongMethod
    def symptoms
      <<~SYMPTOMS.strip
        1. if you can't tell exactly what a method does at a glance, it's too long
        2. methods with more than one level of nesting are usually too long
        3. methods with more than one level of abstraction may be too long
        4. methods with a flog score of 10 or higher may be too long
      SYMPTOMS
    end
  end
end
