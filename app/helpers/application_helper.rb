module ApplicationHelper
  def alert_class_for(flash_type)
    {
      :sources => 'alert-success',
      :error => 'alert-danger',
      :alert => 'alert-warning',
      :notice => 'alert-info',
    }
    [flash_type.to_sym] || flash_type.to_s
  end
end
