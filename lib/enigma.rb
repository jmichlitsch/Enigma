class Enigma

  def initialize
    @character_integer_hash = {"a" => 1,
                              "b" => 2,
                              "c" => 3,
                              "d" => 4,
                              "e" => 5,
                              "f" => 6,
                              "g" => 7,
                              "h" => 8,
                              "i" => 9,
                              "j" => 10,
                              "k" => 11,
                              "l" => 12,
                              "m" => 13,
                              "n" => 14,
                              "o" => 15,
                              "p" => 16,
                              "q" => 17,
                              "r" => 18,
                              "s" => 19,
                              "t" => 20,
                              "u" => 21,
                              "v" => 22,
                              "w" => 23,
                              "x" => 24,
                              "y" => 25,
                              "z" => 26,
                              " " => 27}
  end

  def encrypt_letter(integer, message, shift)
    @character_integer_hash[message[integer]] + shift[integer%4]
  end

  def encryption(message, shift)
    final_string = ""
    #go thru each letter in message with length -1
    for integer in 0..(message.length-1) do
      new_character_position = encrypt_letter(integer,message,shift)
      #go thru all letters and space with 27
      while (new_character_position >= 28)
        new_character_position -= 27
      end
      final_string += @character_integer_hash.key(new_character_position)
    end
    final_string
  end

  def encrypt(message,
              key = Array.new(5){rand(0..9)}.join.to_s,
              date = Date.today.strftime("%d%m%y"))
    shift = Offset.new(key,date).shift
    encrypted = encryption(message,shift)
  end
end
