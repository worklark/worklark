require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  # by default it was driven using: :chrome, screen_size: [1400, 1400]
  # driven_by :selenium, using: :headless_chrome
  driven_by :selenium, using: :chrome,
                       options: { args: %w[headless disable-gpu no-sandbox
                                           disable-dev-shm-usage] }
  parallelize_me!
end
