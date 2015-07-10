class Comment < ActiveRecord::Base
  belongs_to :blog
  validates :text, :presence => true
end
