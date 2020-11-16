class PopulatePrescriptionRefillCount < ActiveRecord::Migration[6.0]
  def up
    Prescription.all.each do |prescription|
      Prescription.reset_counters(prescription.id, :refills)

    end
  end
end
