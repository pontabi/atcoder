def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

s, t = gets_ss
# cは何番目か
# wは何文字毎に区切るか
s_len = s.size
t_len = t.size
is_ok = false
(1...s_len).each do |i|
  next if s_len / i > t_len
  next if s_len/i+1 < t_len

  splited_s = s.chars.each_slice(i)
  i.times do |j|
    joined_str = ""
    splited_s.each do |str|
      joined_str << str[j] unless str[j] == nil
    end
    is_ok = true if joined_str == t
  end
end

puts is_ok ? "Yes" : "No"
