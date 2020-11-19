ActiveAdmin.register Intervention do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :author_id, :employee_id, :building_id, :battery_id, :column_id, :elevator_id, :start_date_intervention, :end_date_intervention, :result, :report, :status
  #
  # or
  #
  # permit_params do
  #   permitted = [:employee_id, :building_id, :battery_id, :column_id, :elevator_id, :start_date_intervention, :end_date_intervention, :result, :report, :status]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end