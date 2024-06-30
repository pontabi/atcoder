def how_many_splitable_with_two(num, min=-1)
  count = 0
  # 現状の最小値が与えられていない場合
  if min == -1
    while num % 2 == 0
      num /= 2
      count += 1
    end
  # 現状の最小値が与えられている場合
  else
    while num % 2 == 0
      break if count >= min
      num /= 2
      count += 1
    end
  end
  return count
end

_ = gets.chomp.to_i
nums = gets.chomp.split(" ").map(&:to_i)

min_rep = how_many_splitable_with_two(nums[0])
nums[1..].each do |num|
  rep = how_many_splitable_with_two(num, min_rep)
  min_rep = rep if rep < min_rep
end

puts min_rep
