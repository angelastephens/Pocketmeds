class RefillsController < ApplicationController
  before_action :auth_check
  before_action :set_prescription, only:[ :new, :create] #nested new 
  
  
  def new
    @refill = @prescription.refills.build 
  end

  def create
    @refill = @prescription.refills.build(strong_params) 
    if @refill.save
      redirect_to refills_path
    else
      flash[:error] = "Missing field or you may not have any more refills for this medication."
      redirect_to new_prescription_refill_path(@prescription) 
    end
  end

  def index
    if params[:prescription_id] #will be nill if the controller is not in the nested route 
      set_prescription
      @refills = @prescription.refills
    else
      @refills= current_user.refills
    end
  end

  

private
  def set_prescription
    @prescription = current_user.prescriptions.find(params[:prescription_id])
  
  end 

  

  def strong_params
    params.require(:refill).permit(:prescription_id, :dispensed_date, :expiration_date)
  
  end 

end
