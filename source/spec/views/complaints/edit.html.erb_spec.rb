require 'rails_helper'

RSpec.describe "complaints/edit", type: :view do
  before(:each) do
    @complaint = assign(:complaint, Complaint.create!(
      :user_email => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit complaint form" do
    render

    assert_select "form[action=?][method=?]", complaint_path(@complaint), "post" do

      assert_select "input#complaint_user_email[name=?]", "complaint[user_email]"

      assert_select "textarea#complaint_content[name=?]", "complaint[content]"
    end
  end
end
