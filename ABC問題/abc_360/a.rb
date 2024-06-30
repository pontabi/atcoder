S = gets
rice_is_before = false
S.each_char do |char|
  if char == "R"
    rice_is_before = true
    break
  elsif char == "M"
    break
  end
end
puts rice_is_before ? "Yes" : "No"
