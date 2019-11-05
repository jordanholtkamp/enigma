class Key

  attr_reader :key#, :key_array
  def initialize #(given_key = random_number_string)
    @key = random_number_string
    # @key_array = []
  end

  def self.random_number_string
    5.times.map { rand(9) }.join
  end
  #
  # def array_of_five_digits
  #   key.split("")
  # end
  #
  # def make_four_keys
  #   array_of_five_digits.each_cons(2) do |a,b|
  #     @key_array << (a + b).to_i
  #   end
  # end
end