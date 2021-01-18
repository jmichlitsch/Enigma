require './lib/enigma'
require './lib/key'
require './lib/offset'
require 'date'

message = ARGV[0]
encrypted = ARGV[1]

message = File.new(message, 'r').read.strip
key = Key.new.key_generator
date = Date.today.strftime("%d%m%y")
scrammble = Enigma.new.encrypt(message,key)

encrypted = File.new(encrypted, 'a').write(scrammble)
puts "Created '#{encrypted}' with the key #{key} and date #{date}"
