require 'spec_helper'

describe "Static pages" do

  subject { page }
	
  describe "Home page" do
	before { visit root_path }
	
    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
    
  end

  describe "Help page" do
	before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
	before { visit about_path }
 
    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
    
  end

  describe "Contact page" do
  
    before { visit contact_path }

    it { should have_content('CS 232 Contact') }
    it { should have_title(full_title('Contact')) }

    it { should have_selector("h1[class=page-title]") }
    it { should have_selector("dl") }
    it { should have_selector("dt") }
    it { should have_selector("dd") }
    it { should have_selector("section[class=main]") }
    it { should have_css('h1.page-title') }
    it { should have_css('.main') }

  end

end

