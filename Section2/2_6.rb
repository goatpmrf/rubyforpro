# メソッド

# returnはあまり使わない
def greeting(country)
  
  # returnはメソッドを抜けるときに使われがち
  return 'countryを入力してください' if country.nil?

  if country == 'japan'
    'こんにちは' # 戻り値になる
  else
    'hello' # 戻り値になる
  end
end

p greeting(nil)
p greeting('japan')
p greeting('us')
