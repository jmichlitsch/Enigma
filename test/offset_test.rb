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

  def test_date_array
    offset = Offset.new("12345","160121")

    assert_equal [4,6,4,1], offset.date_array
  end

  def test_key_array
    offset = Offset.new("12345","160121")

    assert_equal [12, 23, 34, 45], offset.key_array
  end

  def test_shift
    offset = Offset.new("12345","160121")

    assert_equal [16, 29, 38, 46], offset.shift
  end
end
