# ピタゴラス数(ピタゴラスの定理を満たす自然数)とは a < b < c で以下の式を満たす数の組である.
# a2 + b2 = c2
# 例えば, 32 + 42 = 9 + 16 = 25 = 52 である.
# a + b + c = 1000 となるピタゴラスの三つ組が一つだけ存在する.
# これらの積 abc を計算しなさい.

array_a = [*1..998]
array_b = [*2..999]
array_c = [*3..1000]

array_a.each do |a|
  array_b.each do |b|
    array_c.each do |c|
      if (a ** 2 + b ** 2 == c ** 2) && (a + b + c == 1000) && a < b && b < c
        puts a * b * c
      end
    end
  end
end
