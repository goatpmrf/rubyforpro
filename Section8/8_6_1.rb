# 名前空間
module Baseball
  # これはBaseballモジュールに属するSecondクラス
  class Second
    attr_accessor :player
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  # これはClockモジュールに属するSecondクラス
  class Second
    attr_accessor :digits
    def initialize(digits)
      @digits = digits
    end
  end
end

# 衝突しない
second1 = Baseball::Second.new('Alice', 13)
second2 = Clock::Second.new(13)

p second1.player
# エラー
# p second2.player
