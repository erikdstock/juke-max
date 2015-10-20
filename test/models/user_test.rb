require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "user has a name - a pointless test" do
  	assert_equal(users(:basic).display_name, "Grace Tester")
  end

end
