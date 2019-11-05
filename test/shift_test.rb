require_relative './test_helper'
require './lib/shift'
require './lib/key'
require './lib/offset'
require 'mocha/minitest'

class ShiftTest < Minitest::Test
  def setup
    @shift = Shift.new
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_it_can_make_keys
    assert_equal [12,23,34,45], Shift.make_four_keys_array("12345")
  end

  def test_make_four_offsets
    assert_equal [2,1,6,1], Shift.make_four_offsets("041119")
  end

  def test_it_can_make_total_shift
    assert_equal 14, Shift.total_shift("12345", "041119")[0]
    assert_equal 40, Shift.total_shift("12345", "041119")[2]
  end
end