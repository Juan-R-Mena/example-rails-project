require 'rails_helper'

RSpec.describe "complaints/show", type: :view do
  before(:each) do
    @complaint = assign(:complaint, create(:complaint))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/#{@complaint.user_email}/)
    expect(rendered).to match(/#{@complaint.content}/)
  end
end
