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

  def test_it_starts_with_an_empty_key_array
    assert_equal [], @key.key_array
  end

  def test_it_can_generate_rand_5_digits
    assert_instance_of String, @key.random_number_string
    assert_equal 5, @key.random_number_string.length
  end

  def test_it_can_split_the_string_into_five_elements_of_an_array
    assert_instance_of Array, @key.array_of_five_digits
    assert_equal 5, @key.array_of_five_digits.length
    assert_instance_of String, @key.array_of_five_digits[0]
  end

  def test_key_array_has_4_ints
    @key.stubs(:random_number_array).returns(["1", "2", "4", "1", "3"])
    @key.make_four_keys
    assert_equal [12,24,41,13], @key.key_array
  end
end