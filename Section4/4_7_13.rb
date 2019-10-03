# 配列に初期値を設定する場合の注意点

# 要素が5つで'default'を初期値とする配列を作成する
a = Array.new(5, 'default')
p a

# 0番目の要素を取得し、大文字化
str = a[0]
p str
str.upcase!
p str

# 配列すべてが大文字化されている
p a
puts "\n"

# 異なるオブジェクトとして、初期値を作成する
b = Array.new(5) { 'default' }
p b

str = b[0]
str.upcase!
p str
# 今度は、0番目の要素のみ大文字化出来た
p b
