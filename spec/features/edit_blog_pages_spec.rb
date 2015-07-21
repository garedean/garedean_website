require 'rails_helper'

describe "the edit blog post functionality" do
  before do
    @admin = FactoryGirl.create(:admin)
    @blog = FactoryGirl.create(:blog)
    login_as(@admin, scope: :user)
  end

  it "edits a blog post" do
    visit blogs_path
    click_link("#{@blog.title}")
    click_link("Edit post")
    fill_in "blog[title]", with: "New blog title"
    fill_in "blog[content]", with: "New blog content"
    click_on "Update"
    expect(page).to have_content("Post updated!")
    expect(page).to have_content("New blog title")
  end
end
