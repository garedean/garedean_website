class Project < ActiveRecord::Base
  validates :name, :description, :url, :presence => true
end
