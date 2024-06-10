require "test_helper"

class TrackrsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get trackrs_new_url
    assert_response :success
  end

  test "should get create" do
    get trackrs_create_url
    assert_response :success
  end

  test "should get show" do
    get trackrs_show_url
    assert_response :success
  end
end
