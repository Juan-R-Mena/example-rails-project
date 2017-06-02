require 'spec_helper'

describe 'new complaint', :type => :feature do
  it 'new Form' do
    visit new_complaint_path

    expect(page).to have_field('complaint[email]')
    expect(page).to have_field('complaint[content]')
    expect(page).to have_button('Submit')
  end

  describe 'submit' do
    it 'success' do
      visit new_complaint_path
      fill_in 'complaint[email]', with: 'jhon@doe.com'
      fill_in 'complaint[content]', with: 'some test content'
      click_button 'Submit'

      it { expect(page).to have_content('Successfully created!') }
      it { expect(page).to have_content('jhon@doe.com') }
      expect(page).to have_content('some test content')
    end
    it 'error' do
      visit new_complaint_path
      fill_in 'complaint[email]', with: ''
      fill_in 'complaint[content]', with: 'some test content'
      click_button 'Submit'

      expect(page).to have_content('Error')

      expect(page).to have_field('complaint[email]')
      expect(page).to have_field('complaint[content]')
      expect(page).to have_button('Submit')
    end
  end
end
