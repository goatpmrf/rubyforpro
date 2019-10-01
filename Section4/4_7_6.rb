# 配列をそのまま追加する
b = [2, 3]
a.push(b)
p a

# splat展開
c = []
d = [1, 2]
c.push(*d)
p c
