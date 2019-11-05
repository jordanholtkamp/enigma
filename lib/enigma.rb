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

  def encrypt(message, key = @key, date = @offset)

  end
end