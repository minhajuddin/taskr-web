require 'spec_helper'

describe Project do
  it "should validate name" do
    project = Project.new
    project.should_not be_valid
    project.errors[:name].should_not be_empty
  end
end
