module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end

  module_function :log

end

# モジュールの特異メソッドとしてlogメソッドを呼び出す
Loggable.log('Hello.')

# Loggableモジュールをincludeしたクラスを定義する
class Product
  include Loggable
  
  def title
    # includeしたLoggableモジュールのlogメソッドを呼び出す
    log 'title is called.'
    'A great movie.'
  end
end

# ミックスインしてlogメソッドを呼び出す
product = Product.new
p product.title
