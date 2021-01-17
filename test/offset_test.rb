require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'

class OffsetTest < Minitest::Test
  def test_it_exists
    offset = Offset.new("12345","260818")

    assert_instance_of Offset, offset
  end
end
