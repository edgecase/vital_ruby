require 'test/unit'
require "ws"

class WsTest < Test::Unit::TestCase
  def setup
    CACHE.clear
  end

  def test_sequence_is_returned
    assert_equal [5,16,8,4,2,1], wondrous_sequence(5)
  end

  def test_uses_cache
    CACHE[5] = [:FIVE_SEQUENCE]
    assert_equal [17, 52, 26, 13, 40, 20, 10, :FIVE_SEQUENCE],
      wondrous_sequence(17)
  end

  def test_using_cache_and_updating_cache
    CACHE[5] = [:FIVE_SEQUENCE]
    wondrous_sequence(17)
    assert_equal [17, 52, 26, 13, 40, 20, 10, :FIVE_SEQUENCE],
      CACHE[17]
  end

  def test_uses_cache_for_same_sequence
    CACHE[5] = [:FIVE_SEQUENCE]
    assert_equal [:FIVE_SEQUENCE], wondrous_sequence(5)
  end

end
