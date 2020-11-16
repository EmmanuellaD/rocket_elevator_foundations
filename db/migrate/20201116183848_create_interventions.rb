class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
      t.string :author_id
      t.belongs_to :customer_id
      t.belongs_to :building_id
      t.belongs_to :battery_id
      t.belongs_to :column_id
      t.belongs_to :elevator_id
      t.belongs_to :employee_id
      t.date :start_date_intervention
      t.date :end_date_intervention
      t.string :result, default: "incomplete",:null => true
      t.string :report
      t.string :status, default: "pending"
      t.timestamps
    end
  end
end
