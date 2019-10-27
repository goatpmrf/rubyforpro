begin
  # ZeroDivisionErrorを発生
  1 / 0
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErroeです'
rescue
  puts 'その他のエラーです'
end

# rescueの順番に注意。
