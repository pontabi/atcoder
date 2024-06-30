n, m, k = gets.chomp.split.map(&:to_i)
tests = []
m.times do |i|
  test = gets.chomp.split(" ")
  tests << [
    test[1...-1].sum { |i| 1 << i.to_i - 1 },
    test[-1] == "o"
  ]
end

ans = (1 << n).times.count do |i|
  tests.all? do |j, r|
    number_of_right_keys = (i&j).to_s(2).count("1")
    (number_of_right_keys >= k) == r
  end
end

puts ans
