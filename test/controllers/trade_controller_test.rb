require 'test_helper'

class TradeControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get trade_show_url
    assert_response :success
  end

end
