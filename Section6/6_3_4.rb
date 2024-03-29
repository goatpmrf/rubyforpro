# Stringクラスのメソッド

#### scanメソッド ###
# 引数で渡した正規表現に、マッチした部分を"配列"で返す
p '123 456 789'.scan(/\d+/)

# キャプチャした部分が配列で帰って来る
p '1997年7月17日 2016年12月31日'.scan(/(\d+)年(\d+)月(\d+)日/)

# マッチした文字列全体を取得したい
p '1997年7月17日 2016年12月31日'.scan(/(?:\d+)年(?:\d+)月(?:\d+)日/)
p '1997年7月17日 2016年12月31日'.scan(/\d+年\d+月\d+日/)

### [],slice,slice!メソッド ###
# []に正規表現を渡すと、"文字列"から正規表現にマッチした部分を抜き出す
text = '郵便番号は123-4567です'
p text[/\d{3}-\d{4}/]

# 基本的には最初にマッチした部分のみ返す
text = '123-4567 456-7890'
p text[/\d{3}-\d{4}/]

# キャプチャを使うと第２引数で何番目のキャプチャを取得するかを指定できる
text = '誕生日は1997年7月17日です'
p text[/(\d+)年(\d+)月(\d+)日/, 3]

# 名前付きキャプチャであれば名前で指定することも可能(シンボル or 文字列)
p text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :day]
p text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, 'day']

### splitメソッド ###
# splitに正規表現を渡すと、マッチした文字列を区切り文字にして文字列を分解し配列としてかえす

text = '123,456-789'
# 文字列で区切り文字を指定する
p text.split(',')

# 正規表現を使ってカンマまたはハイフンを区切り文字に指定できる
p text.split(/,|-/)

### gsub,gsub!メソッド ###
# gsubメソッドを使うと、第一引数の正規表現にマッチした文字列を第２引数の文字列で置き換えます
text = '123,456-789'

# 第１引数に文字列を渡すと、完全一致する文字列を第２引数で置き換える
p text.gsub(',', ':')
p text.gsub(/,|-/, ':')

# キャプチャを使うと、第２引数で\2や\1のようにして、キャプチャした文字列を連番で参照出来ます
text = '私の誕生日は1997年7月17日です'

p text.gsub(/(\d+)年(\d+)月(\d+)日/, '\1-\2-\3')
p text.gsub(
  /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/,
  '\k<year>-\k<month>-\k<day>'
)

# 第２引数にハッシュをわたして変換のルールを指定する
text = '123,456-789'
# カンマはコロンに、ハイフンはスラッシュに置き換える
hash = { ',' => ':', '-' => '/' }
p text.gsub(/,|-/, hash)
