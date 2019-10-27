def greeting
  puts 'おはよう'
  if block_given?
    yield # ブロックの処理の呼び出し
    yield
  end
  puts 'こんばんは'
end

greeting

greeting do
  puts 'こんにちは'
end
