module ApplicationHelper
  def admin?
    current_user.try(:admin?)
  end

  # def admin_link_to
  #   if admin?
  #     return link_to
  #   end
  # end
end
