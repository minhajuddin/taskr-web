require 'spec_helper'

describe "Projects" do
  describe "GET /projects" do

    it "should list existing projects" do
      Project.create! :name => "Khalid CMS"
      visit projects_path
      page.should have_content("Khalid CMS")
      #save_and_open_page
    end

  end

  it "should create a project" do
    visit new_project_path
    fill_in "Name", :with => "Taskr issue tracking"
    click_button("Create")
    page.should have_content("Taskr issue tracking")
    #save_and_open_page
  end

end
