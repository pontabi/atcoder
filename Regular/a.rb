def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

_ = gets_i
s = gets.chomp

results = Set.new()
stack = [s]

while stack.size > 0 do
  current = stack.pop

  results << current

  (current.size - 2).times do |i|
    chars = current[i..i+2]
    if chars == "ABA"
      new_string = current[0...i] + "A" + current[i+3..]
      stack << new_string if !results.include?(new_string)
    elsif chars == "BAB"
      new_string = current[0...i] + "B" + current[i+3..]
      stack << new_string if !results.include?(new_string)
    end
  end
end

puts results.size
