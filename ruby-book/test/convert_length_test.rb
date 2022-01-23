require 'minitest/autorun'
require_relative '../lib/convert_length'

class ConvertLengthTest < Minitest::Test
  def test_convert_length
    assert_equal 39.37, convet_length(1, from: :m, to: :in)
    assert_equal 0.38, convet_length(15, from: :in, to: :m)
    assert_equal 10670.73, convet_length(35000, from: :ft, to: :m)
  end
end