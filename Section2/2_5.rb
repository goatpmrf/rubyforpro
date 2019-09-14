# if文あれこれ

country = 'italy'

# if文は、最後に評価された式を戻り値とする

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

puts greeting
