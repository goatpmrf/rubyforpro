def greeting
  
  puts 'おはよう'

  # ブロックに引数をわたし、戻り値を受け取る
  text = yield 'こんにちは'

  # 戻り値を表示
  puts text

  puts 'こんばんは'
end

greeting do |text|
  # yieldで渡された文字列("こんにちは")を２回繰り返す
  text * 2
end
