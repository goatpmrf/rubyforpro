h = {}
# nilが返る
p h[:foo]

# 初期値 引数Ver.
h = Hash.new('Hello')
p a = h[:foo]
p b = h[:bar]

# aとbは同じオブジェクト
p a.equal?(b)
# なので、aを変更すると、bも変更される
a.upcase!
p b
puts "####################"
###############################

# 初期値 ブロックVer.
h2 = {}
h2 = Hash.new{ 'Hello' }
p a = h2[:foo]
p b = h2[:bar]

# aとbは異なるオブジェクト
p a.equal?(b)
# なので、aを変更しても、bは変更されない
a.upcase!
p b
puts "####################"
###############################

# 初期値を返すだけでなく、ハッシュに指定されたキーと初期値を同時に設定する
h3 = Hash.new { |hash, key| hash[key] = 'hello' }
p h3[:foo]
p h3[:bar]
p h3
