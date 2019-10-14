# キャプチャに名前をつける

text = '私の誕生日は1997年7月17日です。'

# ?<hoge>のメタ文字で名前をつける
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
# シンボルで名前を指定できる
p m[:year]
p m[:month]
p m[:day]
# 文字列での指定も可能
p m['year']

# キャプチャの名前がそのままローカル変数に割り当てられる
# if文の左辺に、直接正規表現リテラルを置く必要がある（変数に代入された正規表現ではNG）
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  puts "#{year}/#{month}/#{day}"
end
