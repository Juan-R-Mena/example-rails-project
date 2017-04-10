class ComplaintsController < ApplicationController
  before_action :set_complaint, only: [:show, :edit, :update, :destroy]

  # GET /complaints
  def index
    @complaints = Complaint.all
  end

  # GET /complaints/1
  def show
  end

  # GET /complaints/new
  def new
    @complaint = Complaint.new
  end

  # GET /complaints/1/edit
  def edit
  end

  # POST /complaints
  def create
    @complaint = Complaint.new(complaint_params)

    if @complaint.save
      redirect_to complaints_path, notice: 'Complaint was successfully created.'
    else
      redirect_to new_complaint_path
    end
  end

  # PATCH/PUT /complaints/1
  def update
    if @complaint.update(complaint_params)
      redirect_to complaints_path, notice: 'Complaint was successfully updated.'
    else
      redirect_to edit_complaint_path(@complaint)
    end
  end

  # DELETE /complaints/1
  def destroy
    @complaint.destroy
    respond_to do |format|
      format.html { redirect_to complaints_url, notice: 'Complaint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complaint
      @complaint = Complaint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def complaint_params
      params.require(:complaint).permit(:user_email, :content)
    end
end
