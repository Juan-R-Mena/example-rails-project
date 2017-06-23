require 'spec_helper'

describe 'Submission form', :type => :feature do

  it "Verify that the form is on screen." do
    visit new_complaint_path

    expect(page).to have_selector('form#new_complaint')

    expect(page).to have_field('complaint[user_email]')
    expect(page).to have_field('complaint[content]')
  end

  it "Additional Test : Should successfully submit if filled with valid data" do
    visit new_complaint_path

    fill_in 'complaint[user_email]',  with: 'paul@example.com'
    fill_in 'complaint[content]',  with: 'Example Content'

    click_button 'Create'

    expect(page).to have_content('successfully created')
    expect(page).to have_content('paul@example.com')
    expect(page).to have_content('Example Content')

  end

  it "Additional Test : Should return error if filled with empty data" do
    visit new_complaint_path

    fill_in 'complaint[user_email]',  with: ''
    fill_in 'complaint[content]',  with: 'Example Content'

    click_button 'Create'

    expect(page).to have_content(/error/i)

    expect(page).to have_field('complaint[user_email]')
    expect(page).to have_field('complaint[content]')

  end

end