def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end
def array_to_bitmask(arr)
  bitmask = 0
  arr.each do |bit_position|
    bitmask |= (1 << (bit_position-1))
  end
  bitmask
end

def num_of_bits(bits)
  num = 0
  while bits > 0
    num += 1 if (bits & 1) == 1
    bits >>= 1
  end
  num
end

# n 鍵の本数
# m テストの試行回数
# k 開けるのに必要な正しい鍵の本数
n, m, k = gets_is
tests = []
m.times do |i|
  test = gets.chomp.split(" ")
  test = test[0..-2].map(&:to_i) + [test[-1]]
  tests << test
end

count = 1 << n
(1 << n).times do |i|
  # 正しい鍵の本数が、必要な正しい鍵の本数以下の場合早期アウト
  if num_of_bits(i) < k
    count -= 1
    next
  end

  tests.each do |test|
    _, *bit_positions, r = test
    number_of_right_keys = num_of_bits(array_to_bitmask(bit_positions) & i)
    # test結果と矛盾していたら、count--して早期アウト
    if (number_of_right_keys >= k && r == "x") || (number_of_right_keys < k && r == "o")
      count -=1
      break
    end
  end
end

puts count
