require 'rails_helper'

describe "the delete comment functionality", js: true do
	it "deletes a comment" do
		admin   = FactoryGirl.create(:admin)
		blog    = FactoryGirl.create(:blog)
		comment = FactoryGirl.create(:comment, blog_id: blog.id)

		login_as(admin, scope: :user)
		visit blog_path(blog)
		find("#comment_#{comment.id}").click_link("Delete comment")
		expect(page).to_not have_content("Test AJAX comment name")
    expect(page).to_not have_content("Test AJAX comment text")
	end
end
