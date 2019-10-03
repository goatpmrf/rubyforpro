# 添字付きの繰り返し処理

fruits = ['apple', 'orange', 'melon']

# 添字を受け取る
fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }

# .mapと.with_indexを組み合わせる
p fruits.map.with_index { |fruit, i| "#{i}: #{fruit}"}

# deleteメソッドと組み合わせる
# 要素にaを含み、添字が奇数のものを削除
p fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }
p fruits
