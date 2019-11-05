require_relative './date'
require_relative './key'
require_relative './shift'

class Enigma

  attr_reader :alphabet, :offset, :key
  def initialize
    @alphabet = ("a".."z").to_a << (" ")
    @offset = Offset.current_date
    @key = Key.random_number_string
    # @shift = Shift.new(key, offset)
  end

  def encrypt(message, key = @key, offset = @offset)
    a_shift = Shift.a_shift(key, offset)
    b_shift = Shift.b_shift(key, offset)
    c_shift = Shift.c_shift(key, offset)
    d_shift = Shift.d_shift(key, offset)
    char_array = message.chars
    encryption = char_array.map do |char|
      if char_array.index(char) == 0 || char_array.index(char) % 4 == 0
        a_index = (@alphabet.index(char) + a_shift) % 27
        @alphabet[a_index]
      elsif char_array.index(char) == 1 || char_array.index(char) % 4 == 1
        b_index = (@alphabet.index(char) + b_shift) % 27
        @alphabet[b_index]
      elsif char_array.index(char) == 2 || char_array.index(char) % 4 == 2
        c_index = (@alphabet.index(char) + c_shift) % 27
        @alphabet[c_index]
      elsif char_array.index(char) == 3 || char_array.index(char) % 4 == 3
        d_index = (@alphabet.index(char) + d_shift) % 27
        @alphabet[d_index]
      else
        char
      end
    end
    require "pry"; binding.pry
  end
end