# 問題: https://atcoder.jp/contests/abc211/tasks

pre_chokudai_counts = Array.new(8, 0)
chokudai_counts = Array.new(8, 0)

# c h o k u d a i
#
s = gets.chomp

s.each_char do |outer_char|
  "chokudai".each_char.with_index do |inner_char, index|
    if outer_char == inner_char && index == 0
      chokudai_counts[index] += 1
    elsif outer_char == inner_char
      chokudai_counts[index] = pre_chokudai_counts[index - 1] + pre_chokudai_counts[index]
    end
  end
  pre_chokudai_counts = chokudai_counts.dup
end

ans = chokudai_counts[-1] % (10 ** 9 + 7)
puts ans
