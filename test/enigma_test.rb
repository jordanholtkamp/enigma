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
    @enigma.stubs(:offset).returns("051119")
    assert_equal "051119", @enigma.offset
  end

  def test_it_can_get_random_key
    assert_instance_of String, @enigma.key
    assert_equal 5, @enigma.key.length
  end

  def test_it_has_an_alphabet
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @enigma.alphabet
  end

  def test_it_can_encrypt_message
    assert_equal "keder ohulw", @enigma.message_encrypt("hello world", "02715", "040895")
  end

  def test_it_can_take_a_special_char
    assert_equal "keder ohulw!?", @enigma.message_encrypt("hello world!?", "02715", "040895")
  end

  def test_it_can_encrypt
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_can_decrypt_message
    assert_equal "hello world!?", @enigma.message_decrypt("keder ohulw!?", "02715", "040895")
  end

  def test_decrypt_hash
    expected = {
      decryption: "hello world!?",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.decrypt("keder ohulw!?", "02715", "040895")
  end
end