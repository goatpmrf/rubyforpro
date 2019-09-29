# ブロックを扱う配列のメソッド

numbers = [1, 2, 3, 4, 5]

# map/collect
# ブロックの戻り値として新しい配列を返す
new_numbers = numbers.map { |n| n * 10 }
p new_numbers

# select/find_all/ (rejectは偽の場合)
# ブロックの戻り値が真の要素を集めた配列を返す
even_numbers = numbers.select { |n| n.even? }
p even_numbers

# find/detect
# ブロックの戻り値が最初に真になった要素を返す
even_number1 = numbers.find { |n| n.even? }
p even_number1
