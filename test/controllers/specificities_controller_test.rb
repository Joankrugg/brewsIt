require "test_helper"

class SpecificitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get specificities_new_url
    assert_response :success
  end

  test "should get create" do
    get specificities_create_url
    assert_response :success
  end

  test "should get show" do
    get specificities_show_url
    assert_response :success
  end

  test "should get edit" do
    get specificities_edit_url
    assert_response :success
  end

  test "should get update" do
    get specificities_update_url
    assert_response :success
  end
end
