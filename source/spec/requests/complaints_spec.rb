require 'rails_helper'

RSpec.describe "Complaints", type: :request do
  
  it "Verifies that there are 10 complaints in total" do
  	complaints = Complaint.all
  	expect(complaints.count).to eq(10)	
  end

  it "Verifies that 5 complaints have the same email address" do
  	complaint_count = Complaint.select(:user_email).group(:user_email).having("count(*) > 1").count.first[1]
  	expect(complaint_count).to eq(5)
  end

  describe "GET /complaints" do
    it "Verify Dashboard containing all complaints" do
      get complaints_path
      expect(response).to have_http_status(200)
    end
  end
  
end

RSpec.describe ComplaintsController, type: :controller do
  
	context "GET /complaints/new" do
    it "Verify that the form is on screen" do
      get :new
      expect(assigns(:complaint)).to be_a_new(Complaint)
    end
	end
	
end