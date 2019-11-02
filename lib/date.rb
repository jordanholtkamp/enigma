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

  def offset_hash
    hash = {}
      hash[:a] = offset_array[0].to_i
      hash[:b] = offset_array[1].to_i
      hash[:c] = offset_array[2].to_i
      hash[:d] = offset_array[3].to_i
    hash
  end
end