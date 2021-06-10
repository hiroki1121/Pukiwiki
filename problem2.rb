# フィボナッチ数列の項は前の2つの項の和である. 最初の2項を 1, 2 とすれば, 最初の10項は以下の通りである.

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 数列の項の値が400以下のとき, 値が偶数の項の総和を求めよ.

target_count = 400

def fibonacci(n)
  (n <= 2) ? n : (fibonacci(n - 2) + fibonacci(n -1))
end

array = []

1.step do |n|
  f = fibonacci(n)
  break if f > target_count
  array << f
end

even_num = array.select{ |num| num.even? }

puts even_num.sum