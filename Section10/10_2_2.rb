# ブロックをメソッドの引数としてうけとる
def greeting(&block)
  puts 'おはよう'

  # callメソッドを使ってブロックを実行する
  text = block.call('こんにちは')
  puts text

  puts 'こんばんは'
end

greeting do |text|
  text * 2
end
