# インスタンス変数とアクセサメソッド

class User
  def initialize(name)
    # インスタンス作成時に渡された名前をインスタンス変数に保存する
    @name = name
  end

  def hello
    # インスタンス変数に保存されている名前を表示する
    "Hello, I am #{@name}."
  end
end

user = User.new('Alice')
p user.hello
