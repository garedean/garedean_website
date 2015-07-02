require 'rails_helper'

describe "when viewing all projects" do

  before(:each) do
    @project = Project.create(name: "KindMind.com",
                   description: "A very cool website.",
                   url: "https://www.kindmind.com")
  end

  it "clicking the edit icon for a project navigates to the 'Edit Project' page" do
    visit projects_path
    first("a.edit").click
    expect(page).to have_content "Edit Project"
  end
end
