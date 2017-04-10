# require 'rails_helper'

# RSpec.describe "dashboard/index", :type => :view do
#   it "Show all complaints" do    
#     # assign(:complaints, [double(Complaint), double(Complaint)])    
#     # @complaints = Complaint.all
#     # Complaint.create(user_email: "hemant@gmail.com", content: "nil")
#     # Complaint.create(user_email: "hemant1@gmail.com", content: "nil")
#     # Complaint.create(user_email: "hemant2@gmail.com", content: "nil")
#     # Complaint.create(user_email: "hemant3@gmail.com", content: "nil")
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