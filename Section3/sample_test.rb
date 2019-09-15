require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample

    # OK
    # assert_equal 'RUBY', 'ruby'.upcase

    # capitalizeは１文字目のみ大文字化するのでfailure
    # assert_equal 'RUBY', 'ruby'.capitalize

    # nilはエラー
    # assert_equal 'RUBY', nil.upcase
  end
end
