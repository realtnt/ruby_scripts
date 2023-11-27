def stock_picker(stock_prices)
    # highest profit = a - b where a's index > b's index
    profit = -1
    best_days = [0, 0]
    for i in 0...(stock_prices.length - 1)
        for k in (i+1)...stock_prices.length
            current_profit = stock_prices[k] - stock_prices[i]
            if current_profit > profit
                profit = current_profit
                best_days = [i, k]
            end
        end
    end
    return best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]

p stock_picker([10, 10, 10, 10, 1])

p stock_picker([10, 9, 8, 7, 1, 2])