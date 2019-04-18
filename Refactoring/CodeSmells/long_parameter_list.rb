module CodeSmells
  class LongParameterList
    def symptoms
      <<~SYMPTOMS.strip
        The method has there or more arguments
      SYMPTOMS
    end
  end
end