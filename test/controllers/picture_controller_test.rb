require 'test_helper'

class PictureControllerTest < ActionDispatch::IntegrationTest
  test "should get upload" do
    get picture_upload_url
    assert_response :success
  end

end
