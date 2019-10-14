text = '私の誕生日は1997年7月17日です。'
m = /(\d+)年(\d+)月(\d+)日/.match(text)
p m

# 全体
p m[0]
# 1つ目〜３つ目
p m[1]
p m[2]
p m[3]

# matchはStringクラスにも適用できる
text = '私の誕生日は1997年7月17日です。'
m = text.match(/(\d+)年(\d+)月(\d+)日/)
p m
