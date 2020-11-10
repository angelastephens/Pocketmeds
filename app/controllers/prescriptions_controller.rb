class PrescriptionsController < ApplicationController
  def new
    @medications = Medication.all 
    @prescription = Prescription.new
  end

  def index
    @prescription = current_user.prescriptions
  end

  def create
    @presciption = current_user.prescriptions.build(strong_params)
    if @prescription.save
      redirect_to prescriptions_path
    else
      render :new 
    end

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private 

  def strong_params
    params.require(:prescription).permit(:medication_id, :dosage, :quantity, :refill_amount)
  
  end 

end
