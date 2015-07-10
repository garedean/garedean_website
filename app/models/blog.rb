class Blog < ActiveRecord::Base
  has_many :comments
  validates :title, :content, :presence => true
end
