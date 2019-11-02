require_relative './test_helper'
require './lib/date'
require 'Date'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_it_can_get_current_date
    assert_equal "021119", @offset.current_date
  end

  def test_it_can_square_date
    assert_equal 446012161, @offset.square_date
  end

  def test_it_can_take_last_4_of_date_squared_as_array
    expected = [4,4,6,0,1,2,1,6,1]
    assert_equal expected, @offset.split_date_squared_to_array
  end

  def test_it_can_get_four_offsets
    assert_equal [2,1,6,1], @offset.offset_array
  end
end