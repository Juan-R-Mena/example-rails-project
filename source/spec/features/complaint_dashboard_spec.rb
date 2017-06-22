require 'spec_helper'

describe 'Complaint dashboard', :type => :feature do

  before(:each) do
    Rails.application.load_seed #load seeds before test
  end

  it "Verify that there are 10 complaints in total." do
    visit complaints_path
    expect(page).to have_selector('tr', :count => 10)
  end

  it "Verify that 5 complaints have the same address." do
    visit complaints_path
    expect(page).to have_selector('td', text: 'paul@example.com', count: 5)
  end
end