require 'test_helper'

class PublicListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_list_index_url
    assert_response :success
  end

end
