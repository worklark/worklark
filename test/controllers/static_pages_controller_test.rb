require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
  end

  test "should get about" do
    get about_url
    assert_response :success
  end

  test "should get terms_of_service" do
    get terms_of_service_url
    assert_response :success
  end

  test "should get privacy_policy" do
    get privacy_policy_url
    assert_response :success
  end

  test "should get support" do
    get support_url
    assert_response :success
  end

  test "should get pricing" do
    get pricing_url
    assert_response :success
  end

end
