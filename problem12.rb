# 三角数の数列は自然数の和で表わされ, 7番目の三角数は 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28 である.
# 三角数の最初の10項は:1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...となる.
# 最初の7項について, その約数を列挙すると, 以下のとおり.
#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# これから, 7番目の三角数である28は, 5個より多く約数をもつ最初の三角数であることが分かる.
# では, 500個より多く約数をもつ最初の三角数はいくつか.

start_time = Time.now

# 総素数の数算出
def division(num)
  division_array = []
  i = 1
  while i <= num do
    remainder = num % i
    if remainder == 0
      division_array << i
    end 
    i += 1
  end
  return division_array.length + 1
end

j = 0
num = 0
while true do
  num = num + j + 1
  total_division_num = division(num)
  if total_division_num > 500
    puts num
    break
  else
    j += 1
  end
end

puts "処理概要 #{Time.now - start_time}s"