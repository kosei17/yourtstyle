require "test_helper"

class ProposalsControllerTest < ActionDispatch::IntegrationTest
  test "should get select_category" do
    get proposals_select_category_url
    assert_response :success
  end

  test "should get select_item" do
    get proposals_select_item_url
    assert_response :success
  end

  test "should get create" do
    get proposals_create_url
    assert_response :success
  end
end
