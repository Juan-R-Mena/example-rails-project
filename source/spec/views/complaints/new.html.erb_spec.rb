require 'rails_helper'

RSpec.describe "complaints/new", type: :view do
  before(:each) do
    assign(:complaint, Complaint.new(
      :user_email => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new complaint form" do
    render

    assert_select "form[action=?][method=?]", complaints_path, "post" do

      assert_select "input#complaint_user_email[name=?]", "complaint[user_email]"

      assert_select "textarea#complaint_content[name=?]", "complaint[content]"
    end
  end
end
