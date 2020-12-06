# frozen_string_literal: true

module Algorithm
  module Searching
    module Dijtkstra
      class Describe
        def self.yourself
          <<~DESCRIBE.strip
            There are 4 steps
            1. Find the "cheapest" node. This is a node you can get to in the least
              amount of time.
            2. Update the costs of neighbors of this node.
            3. Repeat until you've done this for every node in the graph.
            4. Calculate the final graph
          DESCRIBE
        end

        # puts Describe.yourself
      end
    end
  end
end
