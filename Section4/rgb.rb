# RGB

def to_hex(r, g, b)
  # '#' +
  # r.to_s(16).rjust(2, '0') +
  # g.to_s(16).rjust(2, '0') +
  # b.to_s(16).rjust(2, '0')

  # 繰り返しを避ける
  # hex = '#'
  # [r, g, b].each do |n|
  #   hex += n.to_s(16).rjust(2, '0')
  # end
  # hex

  # injectを使用する
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  # intsという空の配列を作る
  # ints = []
  # [r, g, b].each do |s|
  #   # <<を使うと配列の最後に要素を追加できる
  #   # .hexで16進を10進にできる
  #   ints << s.hex
  # end
  # ints

  # mapはブロックの戻り値を配列の要素にして、新しい配列を返す
  # [r, g, b].map do |s|
  #   s.hex
  # end

  # &:で簡潔に書く
  [r, g, b].map(&:hex)
end
