# 素数を小さい方から6つ並べると 2, 3, 5, 7, 11, 13 であり, 6番目の素数は 13 である.

# 10 001 番目の素数を求めよ.

require 'prime'

prime_array = []

result = Prime.take(10001).last

puts result