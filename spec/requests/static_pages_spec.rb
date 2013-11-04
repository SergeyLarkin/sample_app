require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
  	it "should have the content 'Sample app'" do
  		visit '/static_pages/home'
  		page.should have_selector('h1',:text => 'Sample App')
  		
  	end

  	it "should have title" do
  		visit '/static_pages/home'
  		page.should have_selector('title',
  			:text => 'Ruby on Rails Tutorial Sample App')

  	end
  	it "should not have title" do
  		visit '/static_pages/home'
  		page.should_not have_selector('title',
  			:text => '| Home')

  	end
  end
  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1',:text => 'Help')
  	end
  	it "should have title" do
  		visit '/static_pages/help'
  		page.should have_selector('title',
  			:text => 'Ruby on Rails Tutorial Sample App | Help')
  	end
  end
  describe "About page" do
  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1',:text => 'About Us')
  	end
  	it "should have title" do
  		visit '/static_pages/about'
  		page.should have_selector('title',
  			:text => 'Ruby on Rails Tutorial Sample App | About Us')
  	end
   end
   describe "Contacts page" do
  	it "should have the content 'Our contacts'" do
  		visit '/static_pages/contacts'
  		page.should have_selector('h1',:text => 'Our contacts')
  	end
  	it "should have title" do
  		visit '/static_pages/contacts'
  		page.should have_selector('title',
  			:text => 'Ruby on Rails Tutorial Sample App | Contacts')
  	end
   end
end
