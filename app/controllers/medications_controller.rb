class MedicationsController < ApplicationController
  require "open-uri"
  
def index 
  @medications = Medication.all 
end 

  
   

end
