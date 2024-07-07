def stock_picker (array)
  max_profit = 0
  best_buy_index = 0
  best_sell_index = 0

  array.each_with_index do |buy_price, buy_index|
    array[buy_index..-1].each_with_index do |sell_price, sell_index_m|
      if sell_price - buy_price > max_profit
        max_profit = sell_price - buy_price
        best_buy_index = buy_index
        best_sell_index = sell_index_m + buy_index
      end
    end
  end

  [best_buy_index, best_sell_index]
end

stock_picker([17,3,6,9,15,8,6,1,10])
