require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "user has a name - a pointless test" do
  	assert_equal(users(:grace).display_name, "Grace Hopper")
  end

end
