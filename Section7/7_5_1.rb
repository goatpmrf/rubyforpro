# self

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    # selfなしでnameメソッド
    "Hello, I am #{name}"
  end

  def hi
    # self付きでnameメソッド
    "Hi, I am #{self.name}"
  end

  def my_name
    # @nameにアクセス
    "My name is #{@name}"
  end

end

user = User.new('Alice')
p user.hello
p user.hi
p user.my_name
