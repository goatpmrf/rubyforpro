# ブロックローカル変数

numbers = [1, 2, 3, 4]
sum = 0

# ブロックの外にあるsumとは別のsumを用意する
numbers.each do |n; sum|
  # 別物のsumを10で初期化、ブロック引数の値を加算する
  sum = 10
  sum += n
  # 加算した値をターミナルに表示する
  p sum
end

p sum
