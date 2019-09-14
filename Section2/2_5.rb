# if文あれこれ

country = 'italy'

greeting =
  if country == 'japan'
    'こんにちは'
  elsif country == 'us'
    'Hello'
  elsif country == 'italy'
    'ciao'
  else
    '???'
  end

# if文は、最後に評価された式を戻り値とするので、greetingに代入されている
puts greeting
