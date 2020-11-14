class PrescriptionsController < ApplicationController
  before_action :auth_check
  before_action :prevent
  skip_before_action :prevent, only:[:index]

  def new
    @medications = Medication.all 
    @prescription = Prescription.new
  end

  def index
    @prescription = current_user.prescriptions
  end

  def create
    @prescription = current_user.prescriptions.build(strong_params)
    if @prescription.save
      redirect_to prescriptions_path
    else
      render :new 
    end

  end

  def show
  end

  def edit
    @medications = Medication.all 
    @prescription = Prescription.find(params[:id])
  end

  def update
    @prescription = Prescription.find(params[:id])
    @prescription.update(strong_params)
    redirect_to prescriptions_path
  end

  def destroy
  end

private
  def prevent
    @prescription = Prescription.find_by_id(params[:id])
    redirect_to prescriptions_path unless current_user.prescriptions.include?(@prescription)
  end



  private 

  def strong_params
    params.require(:prescription).permit(:medication_id, :dosage, :quantity, :refill_amount)
  
  end 

end
