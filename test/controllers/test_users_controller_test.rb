require 'test_helper'

class TestUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test_users_index_url
    assert_response :success
  end

  test "should get show" do
    get test_users_show_url
    assert_response :success
  end

  test "should get new" do
    get test_users_new_url
    assert_response :success
  end

  test "should get delete" do
    get test_users_delete_url
    assert_response :success
  end

  test "should get edit" do
    get test_users_edit_url
    assert_response :success
  end

end
