# 10以下の素数の和は 2 + 3 + 5 + 7 = 17 である.
# 200万以下の全ての素数の和を求めよ.

require 'prime'

prime_array = []

Prime.each(200000) do |prime|
  prime_array << prime
end

result = prime_array.sum
puts result
