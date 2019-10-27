# 例外クラスの指定
begin
  # 1 / 0
  'abc'.foo
rescue ZeroDivisionError
  puts "0割"
rescue NoMethodError => e
  puts "存在しないメソッドの呼び出し"
  puts "エラー: #{e.class} \n #{e.message}"
end