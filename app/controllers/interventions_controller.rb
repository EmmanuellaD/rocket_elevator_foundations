class InterventionsController < ApplicationController
    def createIntervention      

    Intervention.create(
        # author_id: Employee.where(admin_user_id: current_admin_user.id).first.id,
        author_id: params[:employee_id],
        customer_id: params[:selectcustomer],
        building_id: params[:selectbuilding],
        battery_id: params[:selectbattery],
        column_id: params[:selectcolumn],
        report: params[:descript],
        employee_id: params[:selectemployee],
        elevator_id: params[:selectelevator])
        
    
    end
end
