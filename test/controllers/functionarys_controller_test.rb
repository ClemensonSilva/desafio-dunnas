require "test_helper"

class FunctionarysControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get functionarys_create_url
    assert_response :success
  end

  test "should get index" do
    get functionarys_index_url
    assert_response :success
  end
end
