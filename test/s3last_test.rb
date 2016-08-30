require 'test_helper'

class S3lastTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::S3last::VERSION
  end
end
