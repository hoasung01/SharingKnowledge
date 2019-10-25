# frozen_string_literal: true

module Algorithm
  module Searching
    module BFS
      class Describe
        def self.yourself
          <<~DESCRIBE.strip
            - Breadth First Search là thuật toán tìm kiếm theo chiều rộng
            trên đồ thị vô hướng hoặc có hướng, không trọng số, giải quyết
            bài toán:
              + tìm kiếm đường đi ngắn nhấttừ một đỉnh bất kỳ tới tất
              cả các đỉnh khác trong đồ thị ( nếu 2 đỉnh thuộc cùng thành phần
              liên thông với nhau )
              + luôn tìm được đường đi ngắn nhất
          DESCRIBE
        end

        # puts Describe.yourself
      end
    end
  end
end
