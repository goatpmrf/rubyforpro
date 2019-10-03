# step
# 開始値.step(上限値, 1度に増減する大きさ)

a = []
1.step(10, 2) { |n| a << n }
p a

b = []
10.step(1, -2) { |n| b << n }
p b
