# Userクラスの定義
# クラス名は大文字から始める
# キャメルケースで書く

# オブジェクトの作成
# newメソッドを使う
class User
  def initialize(name, age)
    puts "name: #{name}, age: #{age}"
  end
end

User.new('Alice', 20)

class OrderItem
end
