countries = { 'japan' => 'yen', 'us' => 'doller', 'india' => 'rupee' }

# イタリアの通貨を追加する
# ハッシュ[キー] = 値
countries['itary'] = 'euro'
p countries

# ハッシュの上書き
countries['japan'] = '円'
p countries

# ハッシュから値を取り出す
# ハッシュ[キー]
p countries['india']
p countries['brazil']

# eachの使い方
# 2つのブロック引数を用意すると、バラバラに取り出せる
countries.each do |key, value|
  puts "#{key} : #{value}"
end

# 1つしか用意しないと配列となる
countries.each do |key_value|
  # key = key_value[0]
  # value = key_value[1]
  puts "#{key_value[0]} : #{key_value[1]}"
end

# ハッシュの比較
a = { 'x' => 1, 'y' => 2, 'z' => 3 }

# すべてのキーと値が同じであればtrue
b = { 'x' => 1, 'y' => 2, 'z' => 3 }
p a == b

# (並び順が異なっていても)すべてのキーと値が同じであればtrue
c = { 'y' => 2, 'x' => 1, 'z' => 3 }
p a == c

# size
# p {}.size
p a.size

# delete
# 削除された要素の値が戻り値になる（この場合はyen)c
p countries
p countries.delete('japan')
p countries

# 削除しようとしたキーが見つからないときはnil
# ブロックを渡しておけば、ブロックの戻り値となる、
p countries.delete('italy') { |key| "Not Found : #{key}" }
