require_relative './test_helper'
require './lib/shift'
require './lib/key'
require './lib/date'
require 'mocha/minitest'

class ShiftTest < Minitest::Test
  def setup
    @shift = Shift.new
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_it_starts_with_an_empty_shift_array
    assert_equal [], @shift.shift_array
  end

  def test_it_can_retrieve_key_and_date_arrays
    @shift.key.stubs(:random_number_array).returns(["1", "2", "4", "1", "3"])
    @shift.offset.stubs(:current_date).returns("021119")

    @shift.offset.create_offsets
    @shift.key.make_four_keys

    assert_equal [12,24,41,13], @shift.key.key_array
    assert_equal [2,1,6,1], @shift.offset.offset_array
  end

  def test_it_can_add_into_one_shift_array
    @shift.key.stubs(:random_number_array).returns(["1", "2", "4", "1", "3"])
    @shift.offset.stubs(:current_date).returns("021119")

    @shift.add_key_and_offset
    assert_equal [14,25,47,14], @shift.shift_array
  end
end