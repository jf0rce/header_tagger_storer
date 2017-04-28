require 'test_helper'

class UrlAddressesControllerTest < ActionDispatch::IntegrationTest
  test "should get parse" do
    get url_addresses_parse_url
    assert_response :success
  end

end
