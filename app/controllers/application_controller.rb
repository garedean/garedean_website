class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || about_path
  end

  def after_sign_out_path_for(resource_or_scope)
    about_path
  end

  def verify_is_admin
    redirect_to "http://cloud-4.steamusercontent.com/ugc/559891575259321863/2600A129AAB2C71BC3A156BEDE8A74C790DD2249/" unless current_user.admin?
  end
end
