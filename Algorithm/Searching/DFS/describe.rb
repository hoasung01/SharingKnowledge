module Algorithm
  module Searching
    module DFS
      class Describe
        def self.yourself
          <<~DESCRIBE.strip
            - Deapth First Search là thuật toán tìm kiếm đồ thị
            vô hướng hoặc có hướng, không trọng số
            - DFS luôn tìm kiếm được đường đi từ một đỉnh bất kỳ cho trước
            tới một đỉnh đích ( nếu 2 đỉnh thuộc cùng thành phần liên thông
            với nhau). Nhưng không chắc chắn đường đi sẽ là đường đi ngắn nhất
          DESCRIBE
        end

        # puts Describe.yourself
      end
    end
  end
end