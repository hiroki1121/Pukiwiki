# 10未満の自然数のうち, 3 もしくは 5 の倍数になっているものは 3, 5, 6, 9 の4つがあり, これらの合計は 23 になる.

# 同じようにして, 1000 未満の 3 か 5 の倍数になっている数字の合計を求めよ

array = []

[*1..999].each do |num|
  if num % 3 == 0
    array << num
  elsif num % 5 ==0 && num % 15 != 0
    array << num
  else
  end
end

puts array.sum

