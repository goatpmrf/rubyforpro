# 数値の１を文字列に変換する(かっこあり)

a = 1.to_s()
puts a

# かっこなし
b = 1.to_s
puts b

# 数値を１６進数の文字列に変換する
c = 10.to_s(16)
puts c

# かっこなし
d = 10.to_s 16
puts d

# セミコロンを使って１行に押し込める
e = 1.to_s;puts e;d = nil.to_s;puts d;e = 10.to_s 16;puts e

# 複数行コメントアウト
# Ctrl + /

# テスト
