require 'rails_helper'

RSpec.describe "complaints/show", type: :view do
  before(:each) do
    @complaint = assign(:complaint, Complaint.create!(
      :user_email => "User Email",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User Email/)
    expect(rendered).to match(/MyText/)
  end
end
