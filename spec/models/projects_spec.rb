require 'rails_helper'

describe Project do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :url }

  it "saves the description lowercased for the first character" do
    project = FactoryGirl.create(:project)
    project.description.should eq "a cool website I'm working on."
  end
end
