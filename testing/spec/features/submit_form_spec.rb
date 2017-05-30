require 'spec_helper'

describe "new form check", :type => :feature do
  it "should have new complaint form" do
    visit new_complaint_path
    
    expect(page).to have_field('complaint[email]')
    expect(page).to have_field('complaint[content]')
  end

  it "should successfully submit valid form data" do 
    visit new_complaint_path

    fill_in 'complaint[email]', with: 'peter@gmail.com'
    fill_in 'complaint[content]', with: 'this is test content'

    click_button 'Create'

    expect(page).to have_content('Successfully created!')
    expect(page).to have_content('peter@gmail.com')
    expect(page).to have_content('this is test content')
  end
end
