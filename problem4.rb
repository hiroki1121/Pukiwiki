# 左右どちらから読んでも同じ値になる数を回文数という. 2桁の数の積で表される回文数のうち, 最大のものは 9009 = 91 × 99 である.

# では, 3桁の数の積で表される回文数の最大値を求めよ.

mim_num = 100 * 100
max_num = 999 * 999

palindromes = []
[*mim_num..max_num].each do |i|
  str_str_i = i.to_s
  str_rev_i = str_str_i.reverse
  if str_str_i == str_rev_i
    palindromes << i
  end
end
puts palindromes.max

