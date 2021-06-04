# フィボナッチ数列の項は前の2つの項の和である. 最初の2項を 1, 2 とすれば, 最初の10項は以下の通りである.

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 数列の項の値が400以下のとき, 値が偶数の項の総和を求めよ.

def fibonacci(n)
  if n <= 2
    return n
  else
    return fibonacci(n - 2) + fibonacci(n -1)
  end
end

array = []

20.times do |n|
  array << fibonacci(n)
end

even_num = []

array.each do |num|
  if num % 2 == 0
    even_num << num
  end
end

puts even_num.sum