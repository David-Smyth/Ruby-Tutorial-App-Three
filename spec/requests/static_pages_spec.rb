require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) { "Ruby on Rails Tutorial Third App" }
  
  describe "Home page" do
    it "should have the title including 'Third App | Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title} | Home" )
    end
    it "should have heading including 'Third App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Third App')
    end
  end
  describe "Help page" do
    it "should have the title including 'Third App | Help'" do
      visit "/static_pages/help"
      page.should have_selector( 'title', :text => "#{base_title} | Help")
    end
    it "should have heading including 'Help'" do
      visit "/static_pages/help"
      page.should have_selector('h1', :text => 'Help')
    end
  end
  describe "About page" do
    it "should have the title including 'Third App | About'" do
      visit "/static_pages/about"
      page.should have_selector( 'title', :text => "#{base_title} | About")
    end
    it "should have heading including 'About Us'" do
      visit "/static_pages/about"
      page.should have_selector('h1', :text => "About Us")
    end
  end
  describe "Contact page" do
    it "should have a title including 'Third App | Contact'" do
      visit "/static_pages/contact"
      page.should have_selector( 'title', :text => "#{base_title} | Contact")
    end
    it "should have a heading including 'Contact'" do
      visit "/static_pages/contact"
      page.should have_selector( 'h1', :text => 'Contact')
    end
  end
end
