require 'spec_helper'

describe "Homes" do
  describe "GET /" do
    it "smoke test" do
      visit root_path
      page.should have_content('Welcome')
    end
  end
end
