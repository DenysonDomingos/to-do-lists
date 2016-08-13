require 'test_helper'

class AllListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get all_list_index_url
    assert_response :success
  end

end
