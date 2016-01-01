class Project < ActiveRecord::Base
  def screenshot_name
    target_file = name.downcase.gsub(" ", "_")

    if Rails.application.assets.find_asset("screenshots/#{target_file}")
      target_file
    else
      "screenshot_missing"
    end
  end
end
