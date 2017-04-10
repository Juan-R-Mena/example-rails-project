require 'rails_helper'

RSpec.describe "complaints/new", :type => :view do
  it "renders form partial for each complaint" do  
    assign(:complaints, [double(Complaint), double(Complaint)])    
    @complaint = Complaint.new()
    @path = complaints_path
    render   
    expect(view).to render_template("_form")
    expect(response.body).to include("form")
  end
end
