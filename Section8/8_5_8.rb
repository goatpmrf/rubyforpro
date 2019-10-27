module NameChanger
  def change_name
    # セッターメソッド経由でデータを変更する
    self.name = 'ありす'
  end
end

class User
  include NameChanger

  # アクセサを用意
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new('alice')
p user.name

# モジュールで定義したメソッドでインスタンス変数を書き換える
user.change_name
p user.name
