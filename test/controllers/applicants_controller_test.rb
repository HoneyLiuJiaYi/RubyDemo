require 'test_helper'

class ApplicantsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get applicants_new_url
    assert_response :success
  end

  test "should get creaate" do
    get applicants_creaate_url
    assert_response :success
  end

end
