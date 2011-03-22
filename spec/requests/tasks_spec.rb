require 'spec_helper'

describe "Tasks" do
  describe "GET /projects/:id/tasks" do
    it "shows all the issues of a project" do
      project = Project.new(:name => "Khalid CMS")
      task = project.tasks.build(:title => "Fix the subdomain issue", :priority => 4)
    end
  end
end
