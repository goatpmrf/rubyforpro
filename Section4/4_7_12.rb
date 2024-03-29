# 配列に初期値を設定する

# a = []と同値
a = Array.new
p a

# 要素が5の配列を作成する
b = Array.new(5)
p b

# 要素が5で、0を初期値とする配列を作成する
c = Array.new(5, 0)
p c

# ブロックで初期値を設定できる
# ブロック引数の数だけブロックが呼び出され、添字がブロックに渡される
d = Array.new(10) { |n| n % 3 + 1 }
p d
