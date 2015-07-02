require 'rails_helper'

describe "when adding a project" do
  it "filling in all required fields with correct data results in a newly added project with correct details" do
    visit projects_path
    click_on "Add Project"
    fill_in "project[name]", with: "KindMind.com"
    fill_in "project[description]", with: "A very cool website I am building."
    fill_in "project[url]", with: "https://www.kindmind.com"
    click_on 'Add'
    expect(page).to have_content "Project added!"
    expect(page).to have_content "KindMind.com"
    expect(page).to have_content "a very cool website I am building."
  end

  it "the name field is validated for presence" do
    visit new_project_path
    fill_in "project[description]", with: "A very cool website I am building."
    fill_in "project[url]", with: "https://www.kindmind.com"
    click_on 'Add'
    expect(page).to have_content "can't be blank"
  end

  it "the description field is validated for presence" do
    visit new_project_path
    fill_in "project[name]", with: "KindMind.com"
    fill_in "project[url]", with: "https://www.kindmind.com"
    click_on 'Add'
    expect(page).to have_content "can't be blank"
  end

  it "the url field is validated for presence" do
    visit new_project_path
    fill_in "project[name]", with: "KindMind.com"
    fill_in "project[description]", with: "A very cool website I am building."
    click_on 'Add'
    expect(page).to have_content "can't be blank"
  end
end
