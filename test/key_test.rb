require_relative './test_helper'
require './lib/key'
require 'mocha/minitest'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new
    @key_2 = Key.new("12345")
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_it_can_be_given_a_key
    assert_equal "12345", @key_2.key
  end

  def test_it_starts_with_an_empty_key_array
    assert_equal [], @key.key_array
  end

  def test_it_can_generate_rand_5_digits
    assert_instance_of String, @key.random_number_string
    assert_equal 5, @key.random_number_string.length
  end

  def test_it_can_split_the_string_into_five_elements_of_an_array
    @key.expects(:key).returns("12413")
    assert_equal ["1", "2", "4", "1", "3"], @key.array_of_five_digits
  end

  def test_key_array_has_4_ints
    @key.stubs(:array_of_five_digits).returns(["1", "2", "4", "1", "3"])
    @key.make_four_keys
    @key_2.make_four_keys
    assert_equal [12,24,41,13], @key.key_array
    assert_equal [12,23,34,45], @key_2.key_array
  end
end