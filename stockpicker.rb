def stock_picker(num_array)
  best_days = ""
  profit = 0
  num_array.each_with_index do |buy, index1|
    num_array.each_with_index do |sell, index2|
      sells = sell - buy
      if sells > profit && index1 < index2
        profit = sells
        best_days = [index1, index2]
      end
    end
  end
  p best_days
end

stock_picker([17,3,6,9,15,8,6,1,10])
# => [1, 4]
