require 'Date'

class Offset

  attr_reader :date   #, :offset_array
  def initialize #(given_date = current_date)
    @date = current_date
    # @offset_array = []
  end

  def self.current_date
    day = Time.now.day.to_s.rjust(2, "0")
    month = Time.now.month.to_s.rjust(2, "0")
    year = Time.now.year.to_s.slice(2,3)
    day + month + year
  end

  # def square_date
  #   date.to_i**2
  # end
  #
  # def split_date_squared_to_array
  #   string_array = square_date.to_s.split("")
  #   string_array.map { |string| string.to_i }
  # end
  #
  # def create_offsets
  #   a_offset = split_date_squared_to_array[-4]
  #   b_offset = split_date_squared_to_array[-3]
  #   c_offset = split_date_squared_to_array[-2]
  #   d_offset = split_date_squared_to_array[-1]
  #   @offset_array = [a_offset, b_offset, c_offset, d_offset]
  # end
end