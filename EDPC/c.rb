def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

n = gets_i
weights = []
n.times { |_| weights << gets_is }


max_for_a = [0]
max_for_b = [0]
max_for_c = [0]

n.times do |day|
  max_for_a << [max_for_b[day], max_for_c[day]].max + weights[day][0]
  max_for_b << [max_for_a[day], max_for_c[day]].max + weights[day][1]
  max_for_c << [max_for_a[day], max_for_b[day]].max + weights[day][2]
end

puts [max_for_a[-1], max_for_b[-1], max_for_c[-1]].max
