class CreateRefills < ActiveRecord::Migration[6.0]
  def change
    create_table :refills do |t|
      t.date :dispensed_date
      t.integer :prescription_id
      t.date :expiration_date

      t.timestamps
    end
  end
end
