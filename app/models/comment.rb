class Comment < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  validates :text, :presence => true
end
