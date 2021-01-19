require './lib/enigma'
require './lib/key'
require './lib/offset'
require 'date'

encrypted = ARGV[0]
decrypted = ARGV[1]
key = "12345"
date = "160121"

encryption = File.new(encrypted, 'r').read.strip
message = Enigma.new.decrypt(encryption,key,date)

decryption = File.new(decrypted, 'a').write(message)
puts "Created '#{decrypted}' with the key #{key} and date #{date}."
