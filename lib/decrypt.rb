require_relative './enigma'

@enigma = Enigma.new

handle = File.open(ARGV[0], "r")

encrypted_message = handle.read

handle.close

decrypt = @enigma.decrypt(encrypted_message.strip, ARGV[2], ARGV[3])

writer = File.open(ARGV[1], "w")

writer.write(decrypt[:decryption])

writer.close

# Created 'decrypted.txt' with the key 82648 and date 240818

puts "Created #{ARGV[1]} with the key #{decrypt[:key]} and date #{decrypt[:date]}"