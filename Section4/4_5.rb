# 範囲range

a = [1, 2, 3, 4, 5]
p a[1..3]

b = 'abcdef'
p b[1..3]
p b[1...3]

# 判定の判定
def liquid?(temperature)
  (0...100).include?(temperature)
end

p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)

# case文とRange
def charge(age)
  # 0~5歳
  case age
  when 0..5
    0
  # 6~12歳
  when 6..12
    300
  # 13~18歳
  when 13..18
    600
  else
    1000
  end
end

p charge(3)
p charge(12)
p charge(16)
p charge(18)
p charge(25)

# 値が連続する配列
c = (1..5).to_a
p c

d = ('bad'..'bag').to_a
p d

e = ('ab'..'bg').to_a
p e

# splat展開
f = [*1..5]
p f

# 範囲オブジェクトを配列に変換してから繰り返し処理を行う
numbers = (1..4).to_a
sum = 0
numbers.each { |n| sum += n }
p sum

sum = 0
(1..4).each { |n| sum += n }
p sum
