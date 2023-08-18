require "test_helper"

class Api::V1::PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_posts_create_url
    assert_response :success
  end

  test "should get edit" do
    get api_v1_posts_edit_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_posts_update_url
    assert_response :success
  end
end
