# 4.7.5 多重代入の残りの要素を配列として受け取る

e, f = 100, 200, 300
p e
p f

e, *f = 100, 200, 300
p e
p f

# 4.7.6 １つの配列を複数の引数として展開する
a = []
a.push(1)
p a
