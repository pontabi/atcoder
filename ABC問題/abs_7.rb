# ABC088B - Card Game for Two
def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

_ = gets_i
cards = gets_is.sort.reverse

alice_score = 0
bob_score = 0
cards.each.with_index do |card, index|
  if index % 2 == 0
    alice_score += card
  else
    bob_score += card
  end
end

puts alice_score - bob_score
