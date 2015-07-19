module ApplicationHelper
  def admin?
    current_user.try(:admin?)
  end

  def admin_link_to(name, path, options = {})
    if admin?
      return link_to name, path, options
    end
  end
end
