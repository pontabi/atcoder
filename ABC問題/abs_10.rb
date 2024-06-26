s = gets.chomp.reverse
words = ["dream", "dreamer", "erase", "eraser"].map(&:reverse)

flg = true
while s.size > 0
  matched = false
  words.each do |word|
    if s.start_with?(word)
      s.slice!(0...word.size)
      matched = true
      break
    end
  end
  unless matched
    flg = false
    break
  end
end

puts flg ? "YES" : "NO"
