require 'spec_helper'

describe 'complaint Dashboard', :type => :feature do

  before(:each) do
    # NOTE: test this way is not a good idea. It would be much better to use FactoryGirl,
    # but anyway, this what the test ask for.
    Rails.application.load_seed
  end

  it 'There are 10 complaints' do
    visit complaints_path
    expect(page).to have_selector('tr', :count => 11) # 10 + 1 for the tittle
  end

  it "There are 5 equal emails" do
    visit complaints_path
    expect(page).to have_selector('td', text: 'jhon@doe.com', count: 5)
  end
end
