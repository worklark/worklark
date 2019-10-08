require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  class Unauthenticated < DashboardControllerTest
    test 'should get index' do
      get dashboard_url
      assert_response :redirect
    end
  end
end
