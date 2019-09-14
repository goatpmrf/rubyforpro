# 文字列のあれこれ

# 文字列はString Class
puts 'abc'.class

# %q! !は' 'と一緒
puts %q{He said, "Don't Speak."}

# %Q! !は' 'と一緒
something = 'Hello.'
puts %Q{He said, "#{something}"}

# 文字列の途中改行
puts "Line1,
Line2"

# ヒアドキュメント
name = 'Alice'
a = <<~TEXT
  これはヒアドキュメントです
  複数行に渡る長い文字列を作成するのに便利です
  名前は#{name}です
TEXT
puts a

# sprintf
p sprintf('%0.3f', 1.2)
# フォーマット文字列 % 表示したいオブジェクト
p '%0.3f' % 1.2

# 配列の連結
p [10, 20, 30].join

# 演算子による繰り返し
p 'Hi!' * 10
