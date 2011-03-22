require 'spec_helper'

describe "Tasks" do
  describe "GET /projects/:id/tasks" do
    it "shows all the issues of a project" do
      project = Project.create!(:name => "Khalid CMS")
      task = project.tasks.build(:title => "Fix the subdomain issue", :priority => 4)
      project.save
      visit project_tasks_path(project)
      page.should have_content("Fix the subdomain issue")
      save_and_open_page
    end
  end
end
