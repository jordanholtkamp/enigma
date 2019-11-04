require 'Date'

class Offset

  attr_reader :offset_array
  def initialize
    @date = Time.now
    @offset_array = []
  end

  def current_date
    day = @date.day.to_s.rjust(2, "0")
    month = @date.month.to_s.rjust(2, "0")
    year = @date.year.to_s.slice(2,3)
    day + month + year
  end

  def square_date
    current_date.to_i**2
  end

  def split_date_squared_to_array
    string_array = square_date.to_s.split("")
    string_array.map { |string| string.to_i }
  end

  def create_offsets
    a_offset = split_date_squared_to_array[5]
    b_offset = split_date_squared_to_array[6]
    c_offset = split_date_squared_to_array[7]
    d_offset = split_date_squared_to_array[8]
    @offset_array = [a_offset, b_offset, c_offset, d_offset]
  end
end