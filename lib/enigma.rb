require_relative './date'
require_relative './key'
require_relative './shift'

class Enigma

  attr_reader :alphabet, :offset, :key
  def initialize
    @alphabet = ("a".."z").to_a << (" ")
    @offset = Offset.current_date
    @key = Key.random_number_string
  end

  def encrypt(message, key = @key, offset = @offset)
    a_shift = Shift.a_shift(key, offset)
    b_shift = Shift.b_shift(key, offset)
    c_shift = Shift.c_shift(key, offset)
    d_shift = Shift.d_shift(key, offset)
    # require "pry"; binding.pry
    char_array = message.chars
    encryption = char_array.map.with_index do |char, index|
      if index == 0 || index % 4 == 0
        a = @alphabet.rotate(a_shift % 27)
        a[@alphabet.index(char)]
      elsif index == 1 || index % 4 == 1
        b = @alphabet.rotate(b_shift % 27)
        b[@alphabet.index(char)]
      elsif index == 2 || index % 4 == 2
        c = @alphabet.rotate(c_shift % 27)
        c[@alphabet.index(char)]
      elsif index == 3 || index % 4 == 3
        d = @alphabet.rotate(d_shift % 27)
        d[@alphabet.index(char)]
      else
        char
      end
    end
    encryption.join
  end
end
