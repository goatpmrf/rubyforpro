# 配列がブロック引数に渡される場合

dimensions = [
  #[縦, 横]
  [10, 20],
  [30, 40],
  [50, 60],
]

# 面積の計算結果を格納する配列
areas = []
# ブロック引数が１個であれば、ブロック引数の値が配列になる
dimensions.each do |dimension|
  length = dimension[0]
  width = dimension[1]
  areas << length * width
end
p areas

# 配列の要素分だけブロック引数を用意すると、各要素の値が別々に格納される
areas2 = []
dimensions.each do |length, width|
  areas2 << length * width
end
p areas2

# 2つしか引数を受け取らないeach_with_indexに配列を渡す方法
# 配列の要素をカッコでくくる
dimensions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i:#{i}"
end
