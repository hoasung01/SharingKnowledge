module CodeSmells
  class Callback
    def symptoms
      <<~SYMPTOMS.strip
        1. callbacks which contain business logic
        2. attributes which allow certain callbacks to skipped
        3. callbacks which need to be invoked conditionally
      SYMPTOMS
    end
  end
end