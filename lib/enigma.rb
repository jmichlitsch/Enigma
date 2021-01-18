require_relative "./offset"
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
    #use hash above to change letters into values and downcase every letter
    @character_integer_hash[message.downcase[integer]] + shift[integer%4]
  end

  def encryption(message, shift)
    scrammble = ""
    #go thru each letter in message with length -1 moving thru each letter
    for integer in 0..(message.length-1) do
      new_character_position = encrypt_letter(integer,message,shift)
      #go thru all letters and space with 27, if over 28 subtract 27 from it
      while (new_character_position >= 28)
        new_character_position -= 27
      end
      #change value back into letter to have
      scrammble += @character_integer_hash.key(new_character_position)
    end
    scrammble
  end

  def encrypt(message,
              key = Key.new.key_generator,
              date = Date.today.strftime("%d%m%y"))
    shift = Offset.new(key,date).shift
    encrypted = encryption(message,shift)
  end

  def decrypt_letter(integer, scrammble, shift)
    #need to do the opposite of encrypt
    number = @character_integer_hash[scrammble[integer]] - shift[integer%4] +27
    if number < 0
      number + 27
    else
      number
    end
  end

  def decryption(scrammble, shift)
    message = ""
    for integer in 0..(scrammble.length-1) do
      new_position = decrypt_letter(integer,scrammble,shift)
      message += @character_integer_hash.key(new_position)
    end
    message
  end

  def decrypt(scrammble,
              key = Key.new.key_generator,
              date = Date.today.strftime("%d%m%y"))
    shift = Offset.new(key,date).shift
    decrypted = decryption(scrammble,shift)
  end
end
