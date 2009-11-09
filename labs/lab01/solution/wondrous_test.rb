require 'test/unit'
require 'wondrous'

class WondrousTest < Test::Unit::TestCase
  def test_next_in_sequence_when_even
    assert_equal 2, next_in_sequence(4)
    assert_equal 5, next_in_sequence(10)
  end

  def test_next_in_sequence_when_odd
    assert_equal 16, next_in_sequence(5)
    assert_equal 10, next_in_sequence(3)
  end

  def test_wondrous?
    assert wondrous?(5)
    assert wondrous?(123)
  end
end
