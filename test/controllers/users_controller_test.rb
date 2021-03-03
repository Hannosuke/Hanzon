require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get users_edit_url
    assert_response :success
  end

  test "should get upate" do
    get users_upate_url
    assert_response :success
  end

  test "should get mypage" do
    get users_mypage_url
    assert_response :success
  end

end
