# 配列についてもっと詳しく

a = [1, 2, 3, 4, 5]

# 開始位置と長さの指定
p a[1, 3]

# 添字での指定
p a.values_at(0, 2, 4)

# 最後の要素の取得
p a[a.size - 1]

# 負の添字
p a[-1]
p a[-2]

# 最後から２つ
p a[-2, 2]

# last
p a.last
p a.last(2)

# first
p a.first
p a.first(2)
