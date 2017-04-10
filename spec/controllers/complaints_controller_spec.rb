require "rails_helper"

RSpec.describe ComplaintsController, :type => :controller do

  context "Index method operations" do

    before(:each) do
      @complaints_aray =[]
      @all_complaints = []
      (1..5).each_with_index do |id|
        @complaints_aray << Complaint.create(user_email: "same_test_user@gmail.com", content: "nil")
        @all_complaints << Complaint.create(user_email: "test_user@gmail.com"<<id.to_s, content: "nil")
        @all_complaints << @complaints_aray
      end
      Complaint.create(user_email: "text@gmail.com", content: "nil")
      @complaints = Complaint.all
    end

    it "can be responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "can be complaints is equal to 10 entries" do
      expect(@all_complaints.count).to eq(10)
      expect(@all_complaints.first.content).to eq("nil")
      expect(response).to be_success
      get :index
    end

    it "can be complaints is five equal email address " do
      expect(@complaints_aray.count).to eq(5)
      expect(@complaints_aray.first.user_email).to eq("hemant@gmail.com")
      expect(response).to be_success
      get :index
    end

    it "can be complaints is more than 10 entries" do
      expect(@complaints.count>10).to eq(true)
      expect(@complaints.count).to eq(11)
      expect(response).to be_success
      get :index
    end
  end
end
