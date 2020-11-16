class CreatePrescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :prescriptions do |t|
      t.string :dosage
      t.string :quantity
      t.integer :refill_amount
      t.integer :refill_count, default:0
      t.integer :user_id
      t.integer :medication_id

      t.timestamps
    end
  end
end
