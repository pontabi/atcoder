def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

n, l, r = gets_is
l_arr = (1...l).to_a
r_arr = ((r+1)...(n+1)).to_a
center_arr = (l..r).to_a.reverse
puts (l_arr + center_arr + r_arr).join(" ")
