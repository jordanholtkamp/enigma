require_relative './test_helper'
require './lib/enigma'
require 'mocha/minitest'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
    @key = Key.new
    @offset = Offset.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_can_create_a_total_shift_hash
    expected = {
      a: 14,
      b: 25,
      c: 47,
      d: 14
    }
    assert_equal expected, @enigma.shift_total("12413", "021119")
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