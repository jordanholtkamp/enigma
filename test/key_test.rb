require_relative './test_helper'
require './lib/key'
require 'mocha/minitest'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_it_can_generate_rand_5_digits
    assert_instance_of Array, @key.random_number_array
    assert_equal 5, @key.random_number_array.length
  end

  def test_key_array_has_4_ints
    @key.stubs(:random_number_array).returns(["1", "2", "4", "1", "3"])
    @key.four_keys
    assert_equal [12,24,41,13], @key.key_array
  end
end