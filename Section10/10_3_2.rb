def greeting(block)
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

# Procオブジェクトを作成し、それをブロックの代わりとしてgreetingメソッドになおす
repeat_proc = Proc.new { |text| text * 2 }
greeting(repeat_proc)
