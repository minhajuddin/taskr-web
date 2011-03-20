require 'spec_helper'

describe "Projects" do
  describe "GET /projects" do
    it "should list existing projects" do
      Project.create! :name => "Khalid CMS"
      visit projects_path
      page.should have_content("Khalid CMS")
      save_and_open_page
    end
  end
end
