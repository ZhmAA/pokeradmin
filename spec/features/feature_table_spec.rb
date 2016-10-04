require "spec_helper"

describe "feature poker tables", :type => :feature do

  before :each do
    table = FactoryGirl.create(:table, title: "Game", id: 3)
    visit root_path
    find(:css, "#user_tables_3").click
    click_button "Add Player"
  end

    it "check creating user and add him to game" do
      fill_in 'Email', with: 'name3@name.com'
      click_button "Add Player"
      expect(page).to have_content "User create successful and add to game!"
    end
  
    it "check exist user adding to game" do
      user = FactoryGirl.create(:user, email: "name2@name.com")
      fill_in 'Email', with: 'name2@name.com'
      click_button "Add Player"
      expect(page).to have_content "Exist user add to game"
    end

end
