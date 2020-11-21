class AddAdminUserIdToInterventions < ActiveRecord::Migration[5.2]
  def change
    add_column :interventions, :admin_user_id, :integer
  end
end
