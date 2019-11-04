class Key

  attr_reader :key_array
  def initialize
    @a_key = ""
    @b_key = ""
    @c_key = ""
    @d_key = ""
    @key_array = []
  end

  def random_number_array
    5.times.map { rand(9) }.join.split("")
  end

  def four_keys
    # keys_as_strings = []
    random_number_array.each_cons(2) do |a,b|
      @key_array << (a + b).to_i
    end
    @key_array
  end
end