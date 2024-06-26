n = gets.chomp.to_i
mochis = (0...n).map do |_|
           gets.chomp.to_i
         end
puts mochis.uniq.size
