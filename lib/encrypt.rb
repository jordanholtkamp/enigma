require_relative './enigma'

@enigma = Enigma.new

handle = File.open(ARGV[0], "r")

message = handle.read

handle.close

# puts message

encrypt = @enigma.encrypt(message.strip)

writer = File.open(ARGV[1], "w")

writer.write(encrypt[:encryption])

writer.close

puts "Created #{ARGV[1]} with key #{encrypt[:key]} and date #{encrypt[:date]}"