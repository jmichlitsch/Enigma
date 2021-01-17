require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'

class OffsetTest < Minitest::Test
  def test_it_exists
    offset = Offset.new("12345","160121")

    assert_instance_of Offset, offset
  end

  def test_sqaure_date
    offset = Offset.new("12345","160121")

    assert_equal 25638734641, offset.square_date
  end

  def test_last_four_date
    offset = Offset.new("12345","160121")

    assert_equal 4641, offset.last_four_date
  end
end
