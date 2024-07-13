# Assignment:
# Implement a method #stock_picker that takes in an stock_prices of stock prices, one for each hypothetical day. It should
# return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

def stock_picker (stock_prices)
  max_profit = 0
  best_buy_index = 0
  best_sell_index = 0

  # nested loops to check each buying and selling combination, to check for the maximum profit
  stock_prices.each_with_index do |buy_price, buy_index|
    stock_prices[buy_index..-1].each_with_index do |sell_price, sell_add_index|
      if sell_price - buy_price > max_profit
        max_profit = sell_price - buy_price
        best_buy_index = buy_index
        best_sell_index = sell_add_index + buy_index
      end
    end
  end

  [best_buy_index, best_sell_index]
end

stock_picker([17,3,6,9,15,8,6,1,10])
