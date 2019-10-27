puts 'Start.'
module Greeter
  def hello
    'hello.'
  end
end

# 例外処理を組み込んで例外に対処する
begin
  greeter = Greeter.new
rescue
  puts '例外発生。続行。'
end

puts 'End.'
