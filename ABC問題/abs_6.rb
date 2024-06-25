# ABC083B - Some Sums
n, a, b = gets.chomp.split(" ").map(&:to_i)

sum_of_some = 0
(1..n).each do |number|
  sum_of_digit = number.to_s.split("").map(&:to_i).sum
  if a <= sum_of_digit and sum_of_digit <= b
    sum_of_some += number
  end
end

puts sum_of_some



########## Better codes by Others ##########
# def sum_of_digits(n)
#   n.to_s.chars.map(&:to_i).sum
# end

# N, A, B = gets.split.map(&:to_i)

# result = (1..N).select { |num| (A..B).include?(sum_of_digits(num)) }.sum

# puts result
