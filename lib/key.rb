class Key



  def random_number_array
    5.times.map { rand(9) }.join.split("")
  end

  def four_keys_array
    keys_as_strings = []
    random_number_array.each_cons(2) do |a,b|
      keys_as_strings << a + b
    end
    keys_as_strings
  end

  def create_hash_of_keys
    require "pry"; binding.pry
    # four_keys_array.reduce({}) do |key_hash, key|
    # end
  end
end