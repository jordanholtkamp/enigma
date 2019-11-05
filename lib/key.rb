class Key

  # attr_reader :key
  # def initialize
  #   @key = random_number_string
  # end

  def self.random_number_string
    5.times.map { rand(9) }.join
  end
end