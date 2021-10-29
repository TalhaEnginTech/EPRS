require "test_helper"

class ReviewFormControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get review_form_index_url
    assert_response :success
  end

  test "should get show" do
    get review_form_show_url
    assert_response :success
  end

  test "should get new" do
    get review_form_new_url
    assert_response :success
  end

  test "should get create" do
    get review_form_create_url
    assert_response :success
  end
end
