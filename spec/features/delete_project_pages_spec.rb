require 'rails_helper'

describe "the delete project functionality" do
  it "deletes a project" do
    admin = FactoryGirl.create(:admin)
    login_as(adming, scope: :user)
    project = FactoryGirl.create(:project)
    visit project_path(project)
    click_link "Delete"
    expect(page).to have_content("Project deleted")
  end
end
