# Regexp.last_matchでマッチの結果を取得する
text = '私の誕生日は1997年7月17日です。'

# =~演算子などを使うと、マッチした結果をRegexp.last_matchで取得する
text =~ /(\d+)年(\d+)月(\d+)日/

# MatchDataオブジェクトを取得する
p Regexp.last_match
# マッチした部分全体を取得する
p Regexp.last_match(0)
# 1〜3番のキャプチャを取得する
p Regexp.last_match(1)
p Regexp.last_match(2)
p Regexp.last_match(3)
p Regexp.last_match(-1)
