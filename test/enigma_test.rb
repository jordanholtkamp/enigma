require_relative './test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  # def test_it_can_square_date
  #   assert_equal 1672401025, @enigma.square_date("040895")
  # end
  #
  # def test_it_can_take_last_4_of_date_squared_as_array
  #   expected = [1,6,7,2,4,0,1,0,2,5]
  #   assert_equal expected, @enigma.split_date_squared_to_array("040895")
  # end
  #
  # def test_it_can_get_four_offsets
  #   assert_equal [1,0,2,5], @enigma.offset("040895")
  # end

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