require 'rails_helper'

describe "the delete project functionality" do
  it "deletes a project" do
    admin = FactoryGirl.create(:admin)
    login_as(admin, scope: :user)
    project = FactoryGirl.create(:project)
    visit projects_path
    find("#project_#{project.id}").click_link("Delete")
    expect(page).to have_content("Project deleted!")
    expect(page).to_not have_content("KindMind.com")
    expect(page).to_not have_content("A cool website I'm working on.")
  end
end
