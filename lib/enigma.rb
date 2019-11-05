require_relative './date'
require_relative './key'

class Enigma

  attr_reader :alphabet
  def initialize
    # @offset = Offset.new
    # @key = Key.new
    @alphabet = ("a".."z").to_a << (" ")
  end

  def encrypt(message, key = key.random_number_string, date = offset.current_date)

  end

  def shift_message(message, key, date)
    key_obj = Key.new(key)
    date_obj = Offset.new(date)
    require "pry"; binding.pry
  
    # convert key to our four key array
    # convert date to four offset array
    require "pry"; binding.pry
    message.chars.eac


  end
end