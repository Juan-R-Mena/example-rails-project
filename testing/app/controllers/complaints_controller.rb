class ComplaintsController < ApplicationController
  def index
    @complaints = Complaint.all
  end

  def new
    @complaint = Complaint.new
  end

  def create
    @complaint = Complaint.new(complaint_params)
    if @complaint.save
      flash[:success] = "Successfully created!"
      redirect_to complaints_path
    else
      render 'new'
    end
  end

  private
  
  def complaint_params
    params.require(:complaint).permit(:email, :content)
  end
end
