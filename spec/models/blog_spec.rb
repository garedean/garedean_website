require 'rails_helper'

describe Blog do
  it { should validate_presence_of :title }
  it { should validate_presence_of :content }
  it { should have_many :comments }

  it "saves a blog post's title" do
    blog = FactoryGirl.create(:blog)
    blog.title.should eq "A new blog post"
  end

  it "saves a blog post's content" do
    blog = FactoryGirl.create(:blog)
    blog.content.should eq "New blog post content"
  end
end
