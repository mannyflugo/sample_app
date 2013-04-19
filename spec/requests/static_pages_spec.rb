require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
  
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit home_path
      page.should have_content('Sample App')
    end
	
    it "should have base title 'Home'" do 
      visit home_path
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
    end
    
    it "should not have a custom page title" do
      visit home_path
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit help_path
      page.should have_content('Help')
    end
 
	it "should have the right title 'Help'" do
	visit help_path
	page.should have_selector('title', :text => "| Help")
    end
  end
  
  describe "About page" do
    it "should have the content 'About Us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit about_path
      page.should have_content('About Us')
    end

	it "should have the right title 'About Us'" do
	visit about_path
	page.should have_selector('title', :text => " | About Us")
    end
  end

  describe "Contacts page" do
    it "should have the content 'Contacts'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit contacts_path
      page.should have_content('Contact')
    end
  end
end
