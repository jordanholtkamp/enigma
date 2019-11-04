require_relative './key'
require_relative './date'

class Shift

  attr_reader :shift_array, :key, :offset
  def initialize
    @shift_array = []
    @key = Key.new # ("12413") Might want these to take default arguments
    @offset = Offset.new #("today's date")
  end

  def add_key_and_offset
    offset.create_offsets
    key.make_four_keys
    a_shift = key.key_array[0] + offset.offset_array[0]
    b_shift = key.key_array[1] + offset.offset_array[1]
    c_shift = key.key_array[2] + offset.offset_array[2]
    d_shift = key.key_array[3] + offset.offset_array[3]
    @shift_array = [a_shift, b_shift, c_shift, d_shift]
  end
end