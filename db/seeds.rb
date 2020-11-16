# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

def medication_index
    doc = Nokogiri::HTML(open("https://www.iodine.com/drug"))
    doc.css('section ul li.grow-none').map {|med| med.text }
    
  
end

medication_index.each do |medication|
    Medication.find_or_create_by(name: medication)
end