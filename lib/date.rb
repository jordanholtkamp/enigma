require 'Date'

class Offset

  attr_reader :date
  def initialize
    @date = Time.now
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

  def offset_array
    split_date_squared_to_array[5..9]
  end
end