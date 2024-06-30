def gets_i; gets.chomp.to_i; end
def gets_is; gets.chomp.split.map(&:to_i); end
def gets_ss; gets.chomp.split; end

# n　マス目の縦横
# t  番号を読み上げる回数
n, _ = gets_is
nums = gets_is

# コールされたマスを軸に、縦横斜めに探索を入れて、すべてコール済みなら終了
has_bingo = false
cur_index = 0
nums.each.with_index do |base, index|
  cur_index = index
  i = (base-1) / n + 1
  j = base % n == 0 ? n : base % n
  # 縦方向の探索
  has_bingo = (j..n*(n-1)+j).step(n).all? do |num|
    nums[0..index].include?(num)
  end
  break if has_bingo

  # 横方向の探索
  has_bingo = (n*(i-1)+1..n*i).all? do |num|
    nums[0..index].include?(num)
  end
  break if has_bingo

  # 左ななめ方向の探索
  if base%(n+1) == 1
    has_bingo = (1..n**2).step(n+1).all? do |num|
      nums[0..index].include?(num)
    end
  end
  break if has_bingo

  # 右斜め方向の探索
  if base%(n-1) == 1
    has_bingo = (n-1..n*(n-1)+1).step(n-1).all? do |num|
      nums[0..index].include?(num)
    end
  end
  break if has_bingo
end

if has_bingo
  puts cur_index + 1
else
  puts (-1)
end
