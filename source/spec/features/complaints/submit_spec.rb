require 'spec_helper'

describe 'new complaint', :type => :feature do
  it 'new Form' do
    visit new_complaint_path

    expect(page).to have_field('complaint[user_email]')
    expect(page).to have_field('complaint[content]')
    expect(page).to have_button('Submit')
  end

  describe 'submit' do
    it 'success' do
      visit new_complaint_path
      fill_in 'complaint[user_email]', with: 'jhon@doe.com'
      fill_in 'complaint[content]', with: 'some test content'
      click_button 'Submit'

      expect(page).to have_content('Complaint was successfully created.')
      expect(page).to have_content('jhon@doe.com')
      expect(page).to have_content('some test content')
    end
    it 'error' do
      visit new_complaint_path
      fill_in 'complaint[user_email]', with: ''
      fill_in 'complaint[content]', with: 'some test content'
      click_button 'Submit'

      expect(page).to have_content('Please review the problems below')

      expect(page).to have_field('complaint[user_email]')
      expect(page).to have_field('complaint[content]')
      expect(page).to have_button('Submit')
    end
  end
end
