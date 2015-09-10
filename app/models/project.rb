class Project < ActiveRecord::Base
  def screenshot_name
    target_file = name.downcase.gsub(" ", "_")

    if Rails.application.assets.find_asset("#{target_file}.jpg")
      target_file
    else
      "screenshot_missing"
    end
  end
end
