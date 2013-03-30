require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get '/static_pages/home' # static_pages_index_path
      response.status.should be(200)
      get '/static_pages/help' # static_pages_index_path
      response.status.should be(200)
    end

    it "should <h></h>ave the content 'Sample App' in home" do
      visit '/static_pages/home'



    it "should have the content 'Help' in help" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    describe "About page" do
      it "should have the content 'About Us'" do
        visit '/static_pages/about'
        page.should have_content('About Us')
      end
    end
  end
end