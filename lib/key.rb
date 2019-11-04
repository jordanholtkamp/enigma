class Key

  attr_reader :key_array
  def initialize
    @key_array = []
  end

  def random_number_array
    5.times.map { rand(9) }.join.split("")
  end

  def make_four_keys
    random_number_array.each_cons(2) do |a,b|
      @key_array << (a + b).to_i
    end
  end
end