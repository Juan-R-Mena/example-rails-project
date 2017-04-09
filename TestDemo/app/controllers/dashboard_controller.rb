class DashboardController < ApplicationController
  def index
    @complaints = Complaint.all.last(10)
  end
end
