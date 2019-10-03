# timesメソッド
sum = 0

# 処理を5回繰り返す
# nには0,1,2,3,4がはいる
5.times { |n| sum += n }
p sum

sum2 = 0
# 不要であればブロック引数も省略できる
5.times { sum2 += 1 }
p sum2
