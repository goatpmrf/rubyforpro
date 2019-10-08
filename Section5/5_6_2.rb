h = { us: 'doller', india: 'rupee' }
# 変数のhのキーと値を**で展開させる
# TODO:うまく行かないので調べる

### エラー内容
# 5_6_2.rb:4: syntax error, unexpected ':', expecting '}'
# p { japan: 'yen', **h }
# 5_6_2.rb:4: syntax error, unexpected ',', expecting end-of-input
# p { japan: 'yen', **h }

# p { japan: 'yen', **h }

# mergeメソッド
# 追加されない・・・？
{ japan: 'yen' }.merge(h)
p h
