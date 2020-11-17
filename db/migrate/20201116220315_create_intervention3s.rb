class CreateIntervention3s < ActiveRecord::Migration[5.2]
  def change
    create_table :intervention3s do |t|
      t.string :customer_id
      t.string :employee_id
      t.string :battery_id
      t.string :column_id

      t.timestamps
    end
  end
end
