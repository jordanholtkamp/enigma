require_relative './offset'
require_relative './key'
require_relative './shift'

class Enigma

  attr_reader :alphabet, :offset, :key
  def initialize
    @alphabet = ("a".."z").to_a << (" ")
    @offset = Offset.current_date
    @key = Key.random_number_string
  end

  def message_encrypt(message, key = @key, offset = @offset)
    message.chars.map.with_index do |char, index|
      if !@alphabet.include?(char)
        char
      elsif index % 4 == 0
        a = @alphabet.rotate(Shift.total_shift(key, offset)[0] % 27)
        a[@alphabet.index(char)]
      elsif index % 4 == 1
        b = @alphabet.rotate(Shift.total_shift(key, offset)[1] % 27)
        b[@alphabet.index(char)]
      elsif index % 4 == 2
        c = @alphabet.rotate(Shift.total_shift(key, offset)[2] % 27)
        c[@alphabet.index(char)]
      elsif index % 4 == 3
        d = @alphabet.rotate(Shift.total_shift(key, offset)[3] % 27)
        d[@alphabet.index(char)]
      end
    end.join
  end

def encrypt(message, key = @key, offset = @offset)
    { encryption: message_encrypt(message, key, offset), key: key, date: offset }
  end

  def message_decrypt(message, key = @key, offset = @offset)
    message.chars.map.with_index do |char, index|
      if !@alphabet.include?(char)
        char
      elsif index % 4 == 0
        a = @alphabet.rotate(-(Shift.total_shift(key, offset)[0] % 27))
        a[@alphabet.index(char)]
      elsif index % 4 == 1
        b = @alphabet.rotate(-(Shift.total_shift(key, offset)[1] % 27))
        b[@alphabet.index(char)]
      elsif index % 4 == 2
        c = @alphabet.rotate(-(Shift.total_shift(key, offset)[2] % 27))
        c[@alphabet.index(char)]
      elsif index % 4 == 3
        d = @alphabet.rotate(-(Shift.total_shift(key, offset)[3] % 27))
        d[@alphabet.index(char)]
      end
    end.join
  end

  def decrypt(message, key = @key, offset = @offset)
    { decryption: message_decrypt(message, key, offset), key: key, date: offset }
  end
end
