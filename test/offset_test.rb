require_relative './test_helper'
require './lib/offset'
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
    Offset.stubs(:current_date).returns("021119")
    assert_equal "021119", Offset.current_date
  end
end