# UFO演算子
class Tempo
  include Comparable

  attr_reader :bpm

  def initialize(bpm)
    @bpm = bpm
  end

  def <=>(other)
    if other.is_a?(Tempo)
      # bpm同士を<=>で比較した結果を返す
      bpm <=> other.bpm
    else
      # 比較出来ない場合nilを返す
      nil
    end
  end
  # 結果を見やすくするためにinspectメソッドをオーバーライド
  def inspect
    "#{bpm}bpm"
  end
end

t_120 = Tempo.new(120)
t_180 = Tempo.new(180)

p t_120 > t_180
p t_120 <= t_180
p t_120 == t_180

# sortメソッドも使用できる
tempos = [Tempo.new(180), Tempo.new(60), Tempo.new(190)]
p tempos.sort
