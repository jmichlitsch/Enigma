require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/offset'

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_encrypt_letter
    enigma = Enigma.new
    message = "Message"
    assert_equal 29, enigma.encrypt_letter(0, message,[16, 29, 38, 46])
    assert_equal 34, enigma.encrypt_letter(1, message,[16, 29, 38, 46])
    assert_equal 57, enigma.encrypt_letter(2, message,[16, 29, 38, 46])
    assert_equal 65, enigma.encrypt_letter(3, message,[16, 29, 38, 46])
  end

  def test_encryption
    enigma = Enigma.new
    message = "message"
    shift = [16, 29, 38, 46]

    assert_equal "bgckqip", enigma.encryption(message, shift)
  end
  def test_encrypt
    enigma = Enigma.new
    message = "message"

    assert_equal "bgckqip", enigma.encrypt(message, "12345","160121")
  end

  def test_decrypt_letter
    enigma = Enigma.new
    scrammble = "bgckqip"

    assert_equal 13, enigma.decrypt_letter(0, scrammble, [16, 29, 38, 46])
    assert_equal 5, enigma.decrypt_letter(1, scrammble, [16, 29, 38, 46])
    assert_equal 19, enigma.decrypt_letter(2, scrammble, [16, 29, 38, 46])
    assert_equal 19, enigma.decrypt_letter(3, scrammble, [16, 29, 38, 46])
  end
end
