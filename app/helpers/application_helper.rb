module ApplicationHelper

  def signed_in?
    current_user
  end

  def twitterized_alert(type)
  case type
    when :error, :alert
      "alert-error"
    when :notice, :success
      "alert-success"
    when :warning
      # not actually in Bootstrap, will default to the yellow
      "alert-warning"
    else
      "alert-info"
  end
end

  def cancel_link_for(object)
    return_to = object.new_record? ? collection_path : resource_path
    link_to "Cancel", return_to, class: 'btn'
  end
end
