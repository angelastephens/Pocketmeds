class MedicationsController < ApplicationController
 before_action :auth_check
def index 
  @medications = Medication.all 
end 

  
   

end
