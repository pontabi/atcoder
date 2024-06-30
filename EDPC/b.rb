def gets_is; gets.chomp.split.map(&:to_i); end

n, k = gets_is
arr_h = gets_is
costs = [0]

(1...n).each do |i|
  min_cost = (1..k).map do |j|
    pre_position = i - j
    next if pre_position < 0
    costs[pre_position] + (arr_h[pre_position] - arr_h[i]).abs
  end.compact.min
  costs << min_cost
end

puts costs[-1]
