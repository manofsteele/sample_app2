require 'spec_helper'

describe "Static pages" do

  subject { page }
	
  describe "Home page" do
	before { visit root_path }
	
    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
 
     describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
        sign_in user
        visit root_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
          expect(page).to have_selector("li##{item.id}", text: item.content)
        end
      end
    end   
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

