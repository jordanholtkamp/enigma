require_relative './test_helper'
require './lib/key'

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
    assert_equal 4, @key.four_keys_array.length
    assert_equal 2, @key.four_keys_array[0].length
    assert_instance_of String, @key.four_keys_array[0]
  end

  def test_it_can_make_a_hash_of_keys
    expected = {
      a: 12,
      b: 12,
      c: 12,
      d: 12
      }
    assert_equal expected.keys, @key.create_hash_of_keys.keys
    assert_equal 4, expected.keys.length
    assert_instance_of Integer, @key.create_hash_of_keys.values[0]
  end
end