def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

_ = gets_i
locs = gets_is
ws = gets_is

ans = 0
arr = []
locs.each.with_index do |loc, i|
  idx = arr.index {|j| j[0] == loc}
  if idx == nil
    arr << [loc, ws[i]]
    next
  else
    if arr[idx][1] >= ws[i]
      ans += ws[i]
    else
      ans += arr[idx][1]
      arr[idx][1] = ws[i]
    end
  end
end

puts ans
