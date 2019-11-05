class Shift
  def self.make_four_keys_array(key)
    number_array = []
    array_of_strings = key.split("")
    array_of_strings.each_cons(2) do |a,b|
        number_array << (a + b).to_i
    end
    number_array
  end

  def self.make_four_offsets(offset)
    squared = offset.to_i**2
    string_square = squared.to_s.split("")
    square_split_int = string_square.map{ |string| string.to_i }
    [square_split_int[-4], square_split_int[-3], square_split_int[-2], square_split_int[-1]]
  end

  def self.total_shift(key, offset)
    [make_four_keys_array(key)[0] + make_four_offsets(offset)[0],
    make_four_keys_array(key)[1] + make_four_offsets(offset)[1],
    make_four_keys_array(key)[2] + make_four_offsets(offset)[2],
    make_four_keys_array(key)[3] + make_four_offsets(offset)[3]]
  end
  #
  # def self.a_shift(key, date)
  #   make_four_keys_array(key)[0] + make_four_offsets(date)[0]
  # end
  #
  # def self.b_shift(key, date)
  #   make_four_keys_array(key)[1] + make_four_offsets(date)[1]
  # end
  #
  # def self.c_shift(key, date)
  #   make_four_keys_array(key)[2] + make_four_offsets(date)[2]
  # end
  #
  # def self.d_shift(key, date)
  #   make_four_keys_array(key)[3] + make_four_offsets(date)[3]
  # end
end