# redo

foods = ['ピーマン', 'トマト', 'セロリ']
count = 0

foods.each do |food|
  print "#{food}は好きですか？ =>"
  # # sampleは配列からランダムに1要素を取得するメソッド
  # answer = ['はい', 'いいえ'].sample
  # puts answer
  #  redo unless answer == 'はい'

  # わざと「いいえ」しか出さないようにする
  answer = 'いいえ'
  puts answer

  count += 1
  # やり直しは２回までにする
  redo if answer != 'はい' && count < 2

  # カウントをリセット
  count = 0
end
