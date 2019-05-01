module CodeSmells
  class CaseStatement
    def symptoms
      <<~SYMPTOMS.strip
        1. case statements that check the class of an object
        2. case statements that check a type code
        3. `divergent change` caused by changingor adding `when` clauses
        4. `shotgun surgery` caused by duplicating the case statement
      SYMPTOMS
    end
  end
end