require 'rails_helper'

RSpec.describe "complaints/index", type: :view do
  before(:each) do
    assign(:complaints, [
      Complaint.create!(
        :user_email => "User Email",
        :content => "MyText"
      ),
      Complaint.create!(
        :user_email => "User Email",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of complaints" do
    render
    assert_select "tr>td", :text => "User Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
