def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

n = gets_i
users = []
rates = []
n.times do |_|
  s, c = gets.split
  users << s
  rates << c.to_i
end

winner_index = rates.sum % n
puts users.sort[winner_index]
