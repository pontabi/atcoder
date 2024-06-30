def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

n = gets_i
cards = n.times.map{|i| gets_is << i+1}

cards.sort! {|a, b| b[0] <=> a[0]}

removed_count = 0
n.times do |i|
  (i-removed_count).times do |j|
    if cards[i-removed_count][1] > cards[j][1]
      cards.delete_at(i-removed_count)
      removed_count += 1
      break
    end
  end
end

cards.sort! {|a, b| a[2] <=> b[2]}
puts cards.size
puts cards.map{|card| card[2]}.join(" ")
