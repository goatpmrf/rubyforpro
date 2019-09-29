# ブロック

numbers = [1, 2, 3, 4]
sum = 0

# eachによってnに、各要素が順番に渡されて、do~end間の処理が実行される
numbers.each do |n|
  sum += n
end

p sum

# deleteメソッド
a = [1, 2, 3, 4, 5, 6]
# 値が２の要素を削除
a.delete(2)
p a

# 配列が奇数の場合に要素を削除する
a.delete_if do |n|
  n.odd?
end
p a

b = [1, 2, 3, 4]
sum = 0
b.each do |n|
  # nがevenかどうか ? 真なら10倍 : 偽ならそのまま
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p sum

# 一行ならdo~endの代わりに{ }を使用することもある。
c = [1, 2, 3, 4]
sum = 0
c.each { |n| sum += n }
p sum
