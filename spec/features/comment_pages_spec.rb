require 'rails_helper'

describe "the add and remove comment workflow" do

  before(:each) do
    @blog = FactoryGirl.create(:blog)
    @comment = FactoryGirl.create(:comment)
  end

  # it "displays comment author name" do
  #   visit blog_path(@blog.id)
  #   expect(page).to have_content("A new blog post")
  #   find("#add-new-comment").click
  #   fill_in "comment[author]", with: "Jimmy Dean"
  #   fill_in "comment[text]", with: "Great post!"
  #   find(".comment-form-wrapper input[type='submit']").click
  #   expect(page).to have_content("Jimmy Dean")
  # end

  # it "displays comment text" do
  #   visit blog_path(@blog.id)
  #   expect(page).to have_content("A new blog post")
  #   find("#add-new-comment").click
  #   fill_in "comment[author]", with: "Jimmy Dean"
  #   fill_in "comment[text]", with: "Great post!"
  #   find(".comment-form-wrapper input[type='submit']").click
  #   expect(page).to have_content("Great post!")
  # end

  # it "removes comment author name after delete" do
  #   @admin = FactoryGirl.create(:user)
  #
  #   visit new_user_session_path
  #   fill_in "user[email]", with: "admin@test.com"
  #   fill_in "user[password]", with: "123abc!!"
  #
  #   find("input[type='submit']").click
  #
  #   visit blog_path(@blog.id)
  #
  #   expect(page).to have_content("Great post!")
  # end
end
