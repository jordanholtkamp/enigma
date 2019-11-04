class Key

  attr_reader :key_array
  def initialize
    @key_array = []
  end

  def random_number_string
    5.times.map { rand(9) }.join
  end

  def array_of_five_digits
    random_number_string.split("")
  end

  def make_four_keys
    random_number_array.each_cons(2) do |a,b|
      @key_array << (a + b).to_i
    end
  end
end