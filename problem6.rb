# 最初の10個の自然数について, その二乗の和は,

# 12 + 22 + ... + 102 = 385
# 最初の10個の自然数について, その和の二乗は,

# (1 + 2 + ... + 10)2 = 3025
# これらの数の差は 3025 - 385 = 2640 となる.

# 同様にして, 最初の100個の自然数について二乗の和と和の二乗の差を求めよ.

num = [*1..100]
sum_exponentiation = []

num.each do |i|
  j = i ** 2
  sum_exponentiation << j
end

sum_num = num.sum
sum_num_exponentiation = sum_num ** 2
result = sum_num_exponentiation - sum_exponentiation.sum
puts result
