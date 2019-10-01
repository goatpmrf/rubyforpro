# 配列の和集合

a = [1, 2, 3]
b = [3, 4, 5]

# 和集合
p a | b

# 差集合
p a - b

# 積集合
p a & b

# Setクラスを用いる
require 'set'
a = Set.new([1, 2, 3])
b = Set.new([3, 4, 5])
p a | b
p a - b
p a & b
