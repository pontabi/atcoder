def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

n, m = gets_is
goals = gets_is
taken_nutrients = Array.new(m, 0)
n.times do |_|
  gets_is.each.with_index do |nu, index|
    taken_nutrients[index] += nu
  end
end

is_enough = true
m.times do |i|
  if taken_nutrients[i] < goals[i]
    is_enough = false
    break
  end
end

puts is_enough ? "Yes" : "No"
