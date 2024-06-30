def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

# x方向の距離、y方向の距離の和が最短距離
# 時間が余るようであれば、余分時間とが偶数であれば到達可能
n = gets_i
roots = [[0, 0, 0]]
n.times do |_|
  roots << gets_is
end

is_reachable = true
(1..n).each.with_index do |index|
  # x方向の距離
  x_dis = (roots[index][1] - roots[index-1][1]).abs
  y_dis = (roots[index][2] - roots[index-1][2]).abs
  dif_of_time = roots[index][0] - roots[index-1][0] - x_dis - y_dis
  if dif_of_time < 0 || dif_of_time % 2 == 1
    is_reachable = false
    break
  end
end
puts is_reachable ? "Yes" : "No"
