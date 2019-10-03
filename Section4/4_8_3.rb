### 添字を0以外から始める ###
fruits = ['apple', 'orange', 'melon']

# eachで繰り返しつつ、1から始まる添字を取得する
# each_with_indexではない。（引数を渡せないので、each.with_index()を使う)
fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}"}

# mapで処理しつつ、10から始まる添字を取得する
p fruits.map.with_index(10) { |fruit, i| "#{i}: #{fruit}"}
