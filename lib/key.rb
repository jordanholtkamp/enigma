class Key
  def self.random_number_string
    5.times.map { rand(9) }.join
  end
end