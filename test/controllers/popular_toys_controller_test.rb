require 'test_helper'

class PopularToysControllerTest < ActionController::TestCase
  test "should get vote" do
    get :vote
    assert_response :success
  end

end
