a = [1, 2, 3]

p a

# 異なるデータ型を混在できる
b = [1, 'apple', 2, 'orenge', 3, 'melon']
p b
p b[0]
p b[1]

# 存在しない要素はnil
p b[100]

# sizeメソッド
p b.size

a[1] = 20
p a
a[5] = 60
p a

c = []
# 一番うしろに追加できる
c << 1
p c
c << 2
p c
c << 3
p c

# 削除できる
c.delete_at(1)
p c

# 削除した値が戻り値になる
p c.delete_at(1)
p c

# 多重代入
# 要素が多いと切り捨て
d, e = [100, 200, 300]
p d
p e

# 多重代入はdivmodメソッドに使える
quo_rem = 14.divmod(3)
p quo_rem
puts "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"
