def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

n = gets_i
arr_h = gets_is
arr_h.unshift(arr_h[0], arr_h[0])
costs = [0, 0]

n.times do |i|
  costs << [
    costs[-2] + (arr_h[i] - arr_h[i+2]).abs,
    costs[-1] + (arr_h[i+1] - arr_h[i+2]).abs,
  ].min
end

puts costs[-1]
