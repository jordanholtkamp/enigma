require_relative './test_helper'
require './lib/enigma'
require 'mocha/minitest'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_can_get_default_current_date
    assert_equal "041119", @enigma.offset.current_date
  end

  def test_it_can_get_random_key
    assert_instance_of String, @enigma.key.random_number_string
    assert_equal 5, @enigma.key.random_number_string.length
  end

  def test_it_has_an_alphabet
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @enigma.alphabet
  end

  def test_it_can_shift_a_message
    assert_equal "keder ohulw", @enigma.shift_message("hello world", "02715", "040895")
  end

  def test_it_can_encrypt
    skip
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end
end