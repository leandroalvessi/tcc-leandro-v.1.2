require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get erro" do
    get pages_erro_url
    assert_response :success
  end

end
