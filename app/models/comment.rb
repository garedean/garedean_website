class Comment < ActiveRecord::Base
  before_save :capitalize_text, :capitalize_author

  belongs_to :blog
  validates :text, :author, :presence => true

  private

  def capitalize_text
    text.capitalize!
  end

  def capitalize_author
    author.capitalize!
  end
end
