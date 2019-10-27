# ブロック付きでオープンすると、メソッドの実行後に自動的にクローズされる

File.open('some.txt', 'w') do |file|
  file << 'Hello'
  1 / 0
end