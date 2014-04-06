require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
    
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("CS 232 Rails Development | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("CS 232 Rails Development | About Us")
    end
  end

  describe "Contact page" do

    it "should have the content 'CS 232 Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('CS 232 Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("CS 232 Rails Development | Contact")
    end

    it "should have element <h1 class=\"page-title\">" do
      visit '/static_pages/contact'
      expect(page).to have_selector("h1[class=page-title]")
    end

    it "should have element <dl>" do
      visit '/static_pages/contact'
      expect(page).to have_selector("dl")
    end

    it "should have element <dt>" do
      visit '/static_pages/contact'
      expect(page).to have_selector("dt")
    end

    it "should have element <dd>" do
      visit '/static_pages/contact'
      expect(page).to have_selector("dd")
    end

    it "should have element <section class=\"main\">" do
      visit '/static_pages/contact'
      expect(page).to have_selector("section[class=main]")
    end

    it "should have css selector h1.page-title " do
      visit '/static_pages/contact'
      expect(page).to have_css('h1.page-title')

    end

    it "should have css selector .main" do
      visit '/static_pages/contact'
      expect(page).to have_css('.main')

    end


  end

end

