require './lib/enigma'
require './lib/key'
require './lib/offset'
require 'date'

message = ARGV[0]
encrypted = ARGV[1]

message = File.new(message, 'r').read.strip
key = "12345"
date = "160121"
scrammble = Enigma.new.encrypt(message,key,date)

encryption = File.new(encrypted, 'a').write(scrammble)
puts "Created '#{encryption}' with the key #{key} and date #{date}"
