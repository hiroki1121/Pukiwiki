# 13195 の素因数は 5, 7, 13, 29 である.
# 600851475143 の素因数のうち最大のものを求めよ.

x = 600851475143
i = 2
prime_array = []
while x > 1 do
  if x % i == 0
    prime_array << i
    x = x / i
  else
    i += 1
  end
end

result = prime_array.max
puts result