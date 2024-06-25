n_500 = gets.chomp.to_i
n_100 = gets.chomp.to_i
n_50 = gets.chomp.to_i
x = gets.chomp.to_i

count = 0
(n_500 + 1).times do |i|
  (n_100 + 1).times do |j|
    (n_50 + 1).times do |k|
      count += 1 if 500*i + 100*j + 50*k == x
    end
  end
end

puts count
