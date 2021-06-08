# 2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり, そのような数字の中では最小の値である.

# では, 1 から 20 までの整数全てで割り切れる数字の中で最小の正の数はいくらになるか.

initial_condition = [*1..10]

# 素数取り出し
require 'prime'
prime_array = []
Prime.each(10) do |prime|
  prime_array << prime
end

# ①素数かつ素因数でないモノを抽出（ex.5,7）
target_array1 = []
# ②素因数を抽出(ex.4,6,8,9)
target_array2 = []
prime_array.each do |i|
  initial_condition.each do |j|
    if j == i && i != 2 && i != 3
      target_array1 << i unless target_array1.include?(i)
    elsif j == (i ** 3)
      target_array2 << j unless target_array2.include?(j)
    else
    end
  end
end
# ③②に含まれる素数ごとの最大値を抽出(ex.8,9)
target_array3 = []

# 最小の生の数を算出
result = 1
target_array1.each do |k|
  result *= k
end
target_array2.each do |k|
  result *= k
end
puts target_array
# puts result