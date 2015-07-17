require 'rails_helper'

describe "the add project functionality" do
  before(:each) do
    @admin = FactoryGirl.create(:admin)
  end

  it "adds a project" do
    login_as(@admin, scope: :user)
    visit projects_path
    find("a.add").click
    fill_in "project[name]", with: "Project Gemini"
    fill_in "project[description]", with: "A top secret project"
    fill_in "project[url]", with: "www.projectgemini.com"
    click_on 'Add'
    expect(page).to have_content "Project added!"
    expect(page).to have_content "Project Gemini"
    expect(page).to have_content "a top secret project"
  end

  it "shows errors if the form is blank" do
    login_as(@admin, scope: :user)
    visit projects_path
    find("a.add").click
    click_on 'Add'
    expect(page).to have_content "can't be blank"
  end
end
