module ApplicationHelper

  def alert_class name
    name == 'notice' ? 'success' : name == 'alert' ? 'info' : name
  end

  def fa_icon_for tag
    fa_class = case tag
                when 'delete' then 'fa fa-trash-o'
                when 'edit' then 'fa fa-pencil-square-o'
                when 'show' then 'fa fa-eye'
                end
    ("<i class='"+ fa_class +"' aria-hidden='true'></i>").html_safe
  end
end
