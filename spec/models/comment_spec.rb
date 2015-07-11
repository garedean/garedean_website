require 'rails_helper'

describe Comment do
  it { should validate_presence_of :author }
  it { should validate_presence_of :text }
  it { should belong_to :blog }

  it "capitalizes the first letter of the author's name" do
    blog_post = FactoryGirl.create(:comment)
    blog_post.author.should eq "Bill Brasky"
  end

  it "capitalizes the first letter of a comment's text " do
    blog_post = FactoryGirl.create(:comment)
    blog_post.text.should eq "Great post!"
  end
end
