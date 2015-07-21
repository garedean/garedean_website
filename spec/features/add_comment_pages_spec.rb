require 'rails_helper'

describe "the add comments functionality", js: true do
	it "adds a comment" do
		blog = FactoryGirl.create(:blog)
		visit blog_path(blog)
		find("#add-new-comment").click
		fill_in "comment[author]", with: "Test AJAX comment name"
    fill_in "comment[text]", with: "Test AJAX comment text"
		click_button "Add"

		expect(page).to have_content("Test AJAX comment name")
    expect(page).to have_content("Test AJAX comment text")
	end
end
