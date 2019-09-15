# 真理値

# t1 = true
# t2 = false

# p t1 and t2
# p !t1 || t2

# or を「Aが真か？　真でなければBせよ」という使い方をする。
def greeting(country)
  # country がnil(false)ならメッセージを表示して、メソッドを抜ける
  country or return 'country を入力してください'

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

p greeting(nil)
p greeting('japan')
