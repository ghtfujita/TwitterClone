require 'test_helper'

class TwclonesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twclones_index_url
    assert_response :success
  end

end
