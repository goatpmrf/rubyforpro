# keysメソッド
# ハッシュの"キー"を配列として返す
currencies = { japan: 'yen', us: 'doller', india: 'rupee' }
p currencies.keys

# valuesメソッド
# ハッシュの"値"を配列として返す
p currencies.values

# has_key? ( key? include? member? )
p currencies.has_key?(:japan)
p currencies.has_key?(:italy)
