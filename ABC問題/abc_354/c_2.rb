def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

n = gets_i
cards = n.times.map{|i| gets_is << i+1}

cards.sort! {|a, b| b[0] <=> a[0]}

remained_card_index = []
min_cost = cards[0][1] + 1
n.times do |i|
  if cards[i][1] < min_cost
    min_cost = cards[i][1]
    remained_card_index << cards[i][2]
  end
end

puts remained_card_index.size
puts remained_card_index.sort.join(" ")
