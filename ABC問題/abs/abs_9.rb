def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

n, y = gets_is
y /= 1000
solution = [-1, -1, -1]

# aで0..nのループを回して、連立一次方程式にして解を探る
(0..n).each do |a|
  # b + c = rest_of_n
  # 5b + c = rest_of_y
  # 4b = rest_of_y - rest_of_n
  # b = (rest_of_y - rest_of_n) / 4
  # c = rest_of_n - b
  rest_of_y = y - 10 * a
  rest_of_n = n - a
  # rest_of_yが負になった時点で、解なし
  if rest_of_y < 0
    break
  end
  if (rest_of_y - rest_of_n) % 4 == 0
    b = (rest_of_y - rest_of_n) / 4
    c = rest_of_n - b
    if b >= 0 and c >= 0
      solution = [a, b, c]
      break
    end
  end
end
puts solution.join(" ")
