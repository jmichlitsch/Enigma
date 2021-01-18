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
    message = "Turing"
    assert_equal 36, enigma.encrypt_letter(0, message,[16, 29, 38, 46])
    assert_equal 50, enigma.encrypt_letter(1, message,[16, 29, 38, 46])
    assert_equal 56, enigma.encrypt_letter(2, message,[16, 29, 38, 46])
    assert_equal 55, enigma.encrypt_letter(3, message,[16, 29, 38, 46])
  end

  def test_encryption
    enigma = Enigma.new
    message = "turing"
    shift = [16, 29, 38, 46]

    assert_equal "iwbaci", enigma.encryption(message, shift)
  end
  def test_encrypt
    enigma = Enigma.new
    message = "turing"

    assert_equal "iwbaci", enigma.encrypt(message, "12345","160121")
  end

  def test_decrypt_letter
    enigma = Enigma.new
    scrammble = "iwbaci"

    assert_equal 20, enigma.decrypt_letter(0, scrammble, [16, 29, 38, 46])
    assert_equal 21, enigma.decrypt_letter(1, scrammble, [16, 29, 38, 46])
    assert_equal 18, enigma.decrypt_letter(2, scrammble, [16, 29, 38, 46])
    assert_equal 9, enigma.decrypt_letter(3, scrammble, [16, 29, 38, 46])
  end

  def test_decryption
    enigma = Enigma.new
    scrammble = "iwbaci"
    shift = [16, 29, 38, 46]

    assert_equal "turing", enigma.decryption(scrammble, shift)
end

  def test_decrypt
    enigma = Enigma.new
    scrammble = "iwbaci"
    shift = [16, 29, 38, 46]

    assert_equal "turing", enigma.decrypt(scrammble, "12345", "160121")
  end
end
