# Common helper configuration
module ApplicationHelper
  FLASH_TO_BOOTSTRAP_MAP = { success: :success,
                             error: :danger,
                             alert: :warning,
                             notice: :info }.freeze

  # filters out flash not mapped to bootstrap classes
  def flash_filter(flash)
    flash.select{|k, v| FLASH_TO_BOOTSTRAP_MAP.keys.include? k.to_sym}
  end

  # the
  def bootstrap_class_for(flash_type)
    FLASH_TO_BOOTSTRAP_MAP[flash_type.to_sym].to_s
  end
end
