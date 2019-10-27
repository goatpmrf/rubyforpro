def greeting(&block)
  puts 'おはよう'
  text =
    if block.arity == 1
    # ブロック引数が１の場合
    yield 'こんにちは'

    elsif block.arity == 2
      # ブロック引数が２の場合
      yield 'こんに', 'ちは'
    end
  puts text
  puts 'こんばんは'
end

# １個のブロック引数でメソッドを呼び出す
greeting do |text|
  text * 2
end

# ２個のブロック引数でメソッドを呼び出す
greeting do |text_1, text_2|
  text_1 * 2 + text_2 * 2
end
