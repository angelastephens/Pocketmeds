class MedicationsController < ApplicationController
  require "open-uri"
  
  private
  def index #should this be made a private method so it doesnt actually load on one page and then I can just use it to search?
    medication_index.each do |medication|
      Medication.find_or_create_by(name: medication)
      
    end   
    
  end

  
    def medication_index
      medication_index = Nokogiri::HTML(open("https://www.iodine.com/drug"))
      medication_index.css('section ul li').map {|med| med.text }
      
    
    end

end
