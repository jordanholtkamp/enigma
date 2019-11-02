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

  def test_it_can_make_4_keys_that_are_two_nums_each
    @key.stubs(:random_number_array).returns(["1", "2", "4", "1", "3"])
    assert_equal ["12", "24", "41", "13"], @key.four_keys_array

  end

  def test_it_can_make_a_hash_of_keys
  @key.stubs(:random_number_array).returns(["1", "2", "4", "1", "3"])
      expected = {
      a: 12,
      b: 24,
      c: 41,
      d: 13
      }
      assert_equal expected, @key.create_hash_of_keys
  end
end