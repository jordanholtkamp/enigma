require_relative './test_helper'
require './lib/date'
require 'mocha/minitest'
require 'Date'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_it_can_get_current_date
    @offset.stubs(:current_date).returns("021119")
    assert_equal "021119", @offset.current_date
  end

  def test_it_can_square_date
    @offset.stubs(:current_date).returns("021119")
    assert_equal 446012161, @offset.square_date
  end

  def test_it_can_make_array_from_squared_value
    @offset.stubs(:current_date).returns("021119")
    expected = [4,4,6,0,1,2,1,6,1]
    assert_equal expected, @offset.split_date_squared_to_array
  end

  def test_it_create_4_offsets
    @offset.stubs(:current_date).returns("021119")
    @offset.create_offsets
    assert_equal 2, @offset.a_offset
  end

  def test_it_can_get_four_offsets
    @offset.stubs(:current_date).returns("021119")
    @offset.create_offsets
    assert_equal [2,1,6,1], @offset.offset_array
  end
end