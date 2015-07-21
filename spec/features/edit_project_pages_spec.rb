require 'rails_helper'

describe "the edit project functionality" do
  before do
    @admin = FactoryGirl.create(:admin)
  end

  before :each do
    login_as(@admin, scope: :user)
    @project = FactoryGirl.create(:project)
    visit projects_path
  end

	it "edits a project's name, description, and url" do
		visit projects_path
    find("#project_#{@project.id}").click_link("Edit")
		fill_in "project[name]", with: "New Name"
		fill_in "project[description]", with: "New Description"
		fill_in "project[url]", with: "www.new-url.com"
		click_on "Update"
		expect(page).to have_content "Project updated!"
    expect(page).to have_content "New Name"
    expect(page).to have_content "new Description"
    find_link('New Name')[:href].should == 'https://www.new-url.com'
	end

	it "shows errors if the form is blank" do
    visit projects_path
    find("#project_#{@project.id}").click_link("Edit")
    fill_in "project[name]", with: ""
    fill_in "project[description]", with: ""
    fill_in "project[url]", with: ""
    click_on "Update"
    expect(page).to have_content "can't be blank"
	end
end
