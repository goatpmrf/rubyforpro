# ハッシュをキーのシンボルにする
countries = { :japan => 'yen', :us => 'doller', :india => 'rupee' }
p countries[:us]

countries2 = { japan: 'yen', us: 'doller', india: 'rupee' }
p countries2[:us]

# ハッシュに格納する値は、異なるデータ型が混在していてもOK
person = {
  name: 'Alice',
  age: '20',
  friends: ['Bob', 'Carol'],
  phones: { home: '1234-0000', mobile: '5677-0000' }
}

p person[:age]
p person[:friends]
p person[:phones][:mobile]
