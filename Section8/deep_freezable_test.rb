require 'minitest/autorun'
# require './deep_freezable'
require './team'
require './bank'



class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    # # とりあえず、モジュールが参照できたことを確認する
    # assert DeepFreezable

    # 配列の値は正しいか
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES

    # 配列自身がfreezeされているか
    assert Team::COUNTRIES.frozen?

    # 配列の要素がfreezeされているか
    assert Team::COUNTRIES.all? { |country| country.frozen?}

  end
  def test_deep_freeze_to_hash
    # ハッシュの値は正しいか?
    assert_equal(
      { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' },
      Bank::CURRENCIES
    )
    # ハッシュ自身がfreezeされているか
    assert Bank::CURRENCIES.frozen?

    # ハッシュの要素（キーと値）が、全てfreezeされているか
    assert Bank::CURRENCIES.all? {|key, value| key.frozen? && value.frozen? }
  end

end
