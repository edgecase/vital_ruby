#!/usr/bin/env ruby

require 'test/unit'
require 'wondrous'

class WondrousTest < Test::Unit::TestCase
  def test_even_numbers_are_halved
    assert_equal 1, next_number_in_sequence(4)
    assert_equal 3, next_number_in_sequence(6)
  end

  def test_odd_numbers_are_tripled_and_incremented
    assert_equal 10, next_number_in_sequence(3)
  end

  def test_wondrous_returns_true
    assert wondrous?(5)
    assert wondrous?(98234332)
  end
end
