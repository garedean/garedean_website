class Project < ActiveRecord::Base
  def screenshot_name
    target_file = name.downcase.gsub(" ", "_")
  end
end
