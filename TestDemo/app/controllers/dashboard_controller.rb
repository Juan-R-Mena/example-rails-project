class DashboardController < ApplicationController
  def index
    @complaints = Complaint.all
  end
end
