require_relative './date'
require_relative './key'

class Enigma
  attr_reader :offset, :key 
  def initialize
    @offset = Offset.new
    @key = Key.new
  end

  def encrypt(message, key = key.random_number_string, date = offset.current_date)

  end

end