require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test
  def test_it_exists_and_has_attributes

    key = Key.new

    assert_instance_of Key, key
    key = Key.new.key_generator
    assert_equal 5, key.length
  end

end
