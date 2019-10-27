# モジュールの特異メソッドとしてsqrtメソッドを定義する
p Math.sqrt(2)

class Calculator
  include Math

  def calc_sqrt(n)
    # ミックスインして、Mathモジュールのsqrtメソッドを使う
    sqrt(n)
  end
end

calculator = Calculator.new
p calculator.calc_sqrt(2)

p Math::PI
p Math::E
