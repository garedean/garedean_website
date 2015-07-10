class Project < ActiveRecord::Base
  before_save :lowercase_description
  validates :name, :description, :url, :presence => true

  private

  # The description should be lowercased since it will immediately follow the title. e.g.: Test project: the description
  def lowercase_description
    target = self.description
    self.description = target[0].downcase + target[1..-1]
  end
end
