require 'rails_helper'

describe Project do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :url }

  it "saves a new project's name" do
    project = FactoryGirl.create(:project)
    project.name.should eq "KindMind.com"
  end

  it "saves a new project's description AND lowercases the first character" do
    project = FactoryGirl.create(:project)
    project.description.should eq "a cool website I'm working on."
  end

  it "saves a new project's url" do
    project = FactoryGirl.create(:project)
    project.url.should eq "www.kindmind.com"
  end
end
