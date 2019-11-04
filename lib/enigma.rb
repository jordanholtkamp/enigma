require_relative './date'
require_relative './key'

class Enigma
  def initialize
    @offset = Offset.new
    @key = Key.new
  end

  def encrypt(message, key, date)

  end

  def shift_total(key, date)
    
    # offset.offset_hash.merge(key.create_hash_of_keys) do |key, offset_values, key_values|
    #   offset_values + key_values
    # end
  end
end