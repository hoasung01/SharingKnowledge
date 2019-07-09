module Algorithm
  module Complexity
    module Space
      class Describe
        Factor = Struct.new(:context)

        FACTORS = [
          Factor.new('kỹ năng lập trình'),
          Factor.new('Các biến cần lưu thực hiện chương trình'),
          Factor.new('Các cấu trúc dữ liệu cần lưu khi thực hiện chương trình'),
          Factor.new('Thuật toán')
        ]

        def self.yourself
          <<~DESCRIBE.strip
            là dung lượng bộ nhớ ước tính phát sinh
            khi thực hiện thuật toán.
            #{FACTORS}
          DESCRIBE
        end

        # puts Space.yourself
      end
    end
  end
end