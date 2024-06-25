def check_even(in_arr)
	in_arr.each do |i|
		if i % 2 != 0
			return false
		end
	end
	return true
end

begin
	n = gets.chomp.to_i
	line = gets.chomp
	inputs = line.split(" ").map(&:to_i)

#	check_even(inputs)

	count = 0
	while check_even(inputs) do
		inputs = inputs.map { |i| i / 2 }
		count += 1
	end

	puts count
rescue => e
	p e.class
	p e.message
	p e.backtrace
end
