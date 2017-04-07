# require 'rails_helper'

# RSpec.describe "dashboard/index", :type => :view do
#   it "Show all complaints" do    
#     # assign(:complaints, [double(Complaint), double(Complaint)])    
#     # @complaints = Complaint.all
#     # Complaint.create(email_address: "hemant@gmail.com", content: "nil")
#     # Complaint.create(email_address: "hemant1@gmail.com", content: "nil")
#     # Complaint.create(email_address: "hemant2@gmail.com", content: "nil")
#     # Complaint.create(email_address: "hemant3@gmail.com", content: "nil")
#     # render   
#     # expect(view).to render_template("index")
#     # expect(assigns[:complaints].size).to eq 2
#     @complaints = Complaint.all
#     render   
#     # expect(view).to render_template("index")
#     expect(response).to eq @complaints.count 
#     # expect(response.body).to include("form")

#   end
# end