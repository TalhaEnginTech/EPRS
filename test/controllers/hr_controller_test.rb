require "test_helper"

class HrControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hr_index_url
    assert_response :success
  end

  test "should get show" do
    get hr_show_url
    assert_response :success
  end

  test "should get new" do
    get hr_new_url
    assert_response :success
  end

  test "should get create" do
    get hr_create_url
    assert_response :success
  end

  test "should get edit" do
    get hr_edit_url
    assert_response :success
  end

  test "should get update" do
    get hr_update_url
    assert_response :success
  end

  test "should get destroy" do
    get hr_destroy_url
    assert_response :success
  end
end
