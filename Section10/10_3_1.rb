# Hello!という文字列を返すProcオブジェクトを返す
hello_proc = Proc.new do
  'Hello.'
end

p hello_proc.call

add_proc = Proc.new { |a, b| a + b }
p add_proc.call(10, 20)
