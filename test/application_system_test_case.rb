require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  # by default it was driven using: :chrome, screen_size: [1400, 1400]
  driven_by :selenium, using: :headless_chrome
  parallelize_me!
end
