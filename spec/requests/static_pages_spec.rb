require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the title including 'Third App | Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Third App | Home' )
    end
    it "should have heading including 'Third App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Third App')
    end
  end
  describe "Help page" do
    it "should have the title including 'Third App | Help'" do
      visit "/static_pages/help"
      page.should have_selector( 'title', :text => 'Third App | Help')
    end
    it "should have heading including 'Help'" do
      visit "/static_pages/help"
      page.should have_selector('h1', :text => 'Help')
    end
  end
  describe "About page" do
    it "should have the title including 'Third App | About'" do
      visit "/static_pages/about"
      page.should have_selector( 'title', :text => 'Third App | About')
    end
    it "should have heading including 'About Us'" do
      visit "/static_pages/about"
      page.should have_selector('h1', :text => "About Us")
    end
  end
end
