
# クローズは勝手に行われる
File.open("./sample.txt","w") do |file|
  file.puts("１行目のテキストです。")
  file.puts("２行目のテキストです。")
  file.puts("３行目のテキストです。")
end
