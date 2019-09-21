require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get terms_of_service" do
    get static_pages_terms_of_service_url
    assert_response :success
  end

  test "should get privacy_policy" do
    get static_pages_privacy_policy_url
    assert_response :success
  end

  test "should get support" do
    get static_pages_support_url
    assert_response :success
  end

  test "should get pricing" do
    get static_pages_pricing_url
    assert_response :success
  end

end
