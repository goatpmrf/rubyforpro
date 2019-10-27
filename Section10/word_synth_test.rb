require 'minitest/autorun'
require './word_synth'
require './effects'

class WordSynthTest < Minitest::Test
  def test_play
    # クラスとモジュールが参照出来たことを確認する
    assert WordSynth
    assert Effects
  end
end
