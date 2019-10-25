# frozen_string_literal: true

module Algorithm
  module Complexity
    module Time
      class Describe
        Factor = Struct.new(:context)

        FACTORS = [
          Factor.new('kỹ năng lập trình'),
          Factor.new('Chương trình dịch mã nguồn'),
          Factor.new('Tốc độ xử lý của vi xử lý'),
          Factor.new('Bộ dữ liệu đầu vào')
        ].freeze

        def self.yourself
          <<~DESCRIBE.strip
            là một khái niệm liên quan đến tốc độ
            nhanh chậm của thuật toán khi nó thực thi:
            #{FACTORS}
          DESCRIBE
        end

        # puts Describe.yourself
      end
    end
  end
end
