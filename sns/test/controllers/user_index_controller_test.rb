require 'test_helper'

class UserIndexControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_index_show_url
    assert_response :success
  end

end
