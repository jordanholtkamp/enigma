require_relative './enigma'

def initialize
  @enigma = Enigma.new
  @key = Key.random_number_string
  @offset = Offset.current_date
end

handle = File.open(ARGV[0], "r")

message = handle.read

handle.close

puts message

encrypt = @enigma.encrypt(message, key, offset)

writer = File.open(ARGV[1], "w")

writer.write(encrypt)

writer.close

