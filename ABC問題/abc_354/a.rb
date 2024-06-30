def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

h = gets_i
length = 0
i = 0
while h >= length do
  length += 2**i
  i += 1
end

puts i
