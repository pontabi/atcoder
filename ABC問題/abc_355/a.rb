def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

a, b = gets_is
suspects = [1, 2, 3] - [a, b]
puts suspects.size == 1 ? suspects[0] : -1
