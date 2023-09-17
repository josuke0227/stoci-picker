
def get_gap int_a, int_b
  if int_a > int_b
    return -1
  end

  int_b - int_a
end

def stock_picker prices
  gap = 0
  result = nil
  for i in 0..(prices.length - 1) do
    for j in (i + 1)..(prices.length - 1) do
      current_gap = get_gap(prices[i], prices[j])
      if current_gap > gap
        gap = current_gap
        result = [i, j]
      end
    end
  end
  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])