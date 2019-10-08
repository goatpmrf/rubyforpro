# ハッシュを配列に
currencies = { japan: 'yen', us: 'doller', india: 'rupee' }
p currencies.to_a

# 配列をハッシュに
array = [
  [:japan, "yen"], [:us, "dollers"], [:india, "rupee"]
]
p array.to_h
