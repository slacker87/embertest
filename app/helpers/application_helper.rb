module ApplicationHelper
    # for pretty alert messages using the flash command
   def bootstrap_class_for flash_type
    case flash_type
    when :success
    "alert-success"
    when :error
    "alert-danger"
    when :alert
    "alert-danger"
    when :notice
    "alert-info"
    when :warning
    "alert-warning"
    else
    flash_type.to_s
end
end
  
  #for devise login/signup form
    def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
end
