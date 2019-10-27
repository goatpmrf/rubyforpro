# モジュールに特異メソッド
module Loggable
  class << self
    def log(text)
      puts "[LOG] #{text}"
    end
  end
end

Loggable.log('Hello.')
