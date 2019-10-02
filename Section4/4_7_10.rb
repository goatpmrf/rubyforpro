# %記法で文字列の配列を簡潔につくる

# []で作る場合
a = ['apple', 'melon', 'orange']
p a

# %wで文字列の配列を作る
# !で囲む
# スペース区切り
b = %w!apple melon orange!
p b

# ()で囲む場合
c = %w(apple melpn orange)
p c

# 空白文字(スペースや改行)が連続した場合も１つの区切り文字とされる
d = %w(
  apple
  melon
  orange
)
p d

# スペースを含めたい場合は、バックスラッシュでエスケープできる
e = %w(big\ apple small\ melon orange)
p e

# 式展開や、\n や、\t を含めたい場合は、%Wを使う
prefix = 'This is'
f = %W(#{prefix}\ an\ apple small\tmelon orange)
puts f
