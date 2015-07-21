require 'rails_helper'

describe "the delete project functionality" do
  before do
    @admin = FactoryGirl.create(:admin)
    @blog = FactoryGirl.create(:blog)
    login_as(@admin, scope: :user)
  end

  it "deletes a project" do
    visit blogs_path
    click_link("#{@blog.title}")
    click_link("Delete post")
    expect(page).to_not have_content("@blog.title")
  end
end
