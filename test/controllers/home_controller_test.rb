require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get setting" do
    get home_setting_url
    assert_response :success
  end

end
