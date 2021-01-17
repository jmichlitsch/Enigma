require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_encrypt_letter
    enigma = Enigma.new

    assert_equal 1, enigma.encrypt_letter
  end

  # def test_encrypt
  #   enigma = Enigma.new
  #   message = "message"
  #
  #   assert_equal "1234567", enigma.encrypt("message")
  end
end
