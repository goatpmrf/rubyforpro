# 4.7.7 メソッドの可変長引数

def greeting(*names)
  # 「と」で区切りながら、namesに渡された配列を１つの文字列に連結する
  "#{names.join('と')}、こんにちは！"
end

p greeting('鈴木さん')
p greeting('鈴木さん', '斎藤さん')
