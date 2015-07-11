class Comment < ActiveRecord::Base
  before_save :capitalize_text, :capitalize_author

  belongs_to :blog
  validates :text, :author, :presence => true

  private

  def capitalize_text
    self.text = text[0].upcase + text[1..-1]
  end

  def capitalize_author
    self.author = author[0].upcase + author[1..-1]
  end
end
