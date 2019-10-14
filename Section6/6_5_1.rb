# / /以外の正規表現
# Regexp.new

text = '123-4567'
p text[Regexp.new('\d{3}-\d{4}')]

# %r で囲む
# スラッシュで囲むとスラッシュをエスケープする必要がある
/http:\/\/example\.com/
# %rで囲むとスラッシュをエスケープしなくて良い
%r!http://example.com!
# !でなく{}でもおｋ
%r{http://example.com}
# 変数展開も可能
pattern = '\d{3}-\d{4}'
p '123-4567' =~ /#{pattern}/
