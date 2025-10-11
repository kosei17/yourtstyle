require "test_helper"

class StylingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stylings_index_url
    assert_response :success
  end

  test "should get new" do
    get stylings_new_url
    assert_response :success
  end

  test "should get create" do
    get stylings_create_url
    assert_response :success
  end

  test "should get show" do
    get stylings_show_url
    assert_response :success
  end
end
