def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

_ = gets_is
arr_a = gets_is
arr_b = gets_is

ans = "No"
is_previous_a = false
(arr_a + arr_b).sort.each do |i|
  if is_previous_a && arr_a.include?(i)
    ans = "Yes"
    break
  else
    is_previous_a = arr_a.include?(i) ? true : false
  end
end

puts ans
