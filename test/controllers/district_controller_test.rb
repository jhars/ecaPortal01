require 'test_helper'

class DistrictControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get district_index_url
    assert_response :success
  end

  test "should get new" do
    get district_new_url
    assert_response :success
  end

end
