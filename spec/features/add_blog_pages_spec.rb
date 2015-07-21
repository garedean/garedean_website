require 'rails_helper'

describe "the add blog functionality" do
  before do
    @admin = FactoryGirl.create(:admin)
  end

  before :each do
    login_as(@admin, scope: :user)
    @blog = FactoryGirl.create(:blog)
    visit projects_path
  end

	it "adds a new blog post" do
		visit blogs_path
    find("a.add").click
		fill_in "blog[title]", with: "New Blog Title"
		fill_in "blog[content]", with: "New Blog Content"
		click_on "Add"
		expect(page).to have_content "Post added!"
    expect(page).to have_content "New Blog Title"
	end

	it "shows errors if the form is blank" do
    visit blogs_path
    find("a.add").click
		click_on "Add"
		expect(page).to have_content "can't be blank"
	end
end
