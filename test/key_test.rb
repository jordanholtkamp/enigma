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
    assert_instance_of String, Key.random_number_string
    assert_equal 5, Key.random_number_string.length
  end
end