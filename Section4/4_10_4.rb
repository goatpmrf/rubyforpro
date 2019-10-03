# next

numbers = [1, 2, 3, 4, 5]
numbers.each do |n|
  # 偶数であれば中断して、次の繰り返し処理にすすむ
  next if n.even?
  puts n
end
