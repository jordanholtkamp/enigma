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
    # four_keys_array.reduce({}) do |key_hash, key|
    #   require "pry"; binding.pry
    #     key_hash[four_keys_array.index(key)] = key.to_i
    #     key_hash
    # end
    hash = {}
      hash[:a] = four_keys_array[0].to_i
      hash[:b] = four_keys_array[1].to_i
      hash[:c] = four_keys_array[2].to_i
      hash[:d] = four_keys_array[3].to_i
      
    hash
  end
end