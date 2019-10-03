# breakとreturn

def greeting(country)
  # countryがnilならメッセージを返してメソッドを抜ける
  return 'countryを入力してください' if country.nil?

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
