require 'test_helper'

class TccControllerTest < ActionDispatch::IntegrationTest
  test "should get tcc" do
    get tcc_tcc_url
    assert_response :success
  end

end
