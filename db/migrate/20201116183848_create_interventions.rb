class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
      t.string :author_id
      t.belongs_to :customer
      t.belongs_to :building
      t.belongs_to :battery
      t.belongs_to :column
      t.belongs_to :elevator
      t.belongs_to :employee
      t.date :start_date_intervention
      t.date :end_date_intervention
      t.string :result, default: "incomplete",:null => true
      t.string :report
      t.string :status, default: "pending"
      t.timestamps
    end
  end
end
