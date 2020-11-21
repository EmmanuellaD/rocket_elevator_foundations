class InterventionsController < ApplicationController
     before_action :intervention, only: :update
    def createIntervention      
        Intervention.create(
            author_id: params[:selectemployee],
            customer_id: params[:selectcustomer],
            building_id: params[:selectbuilding],
            battery_id: params[:selectbattery],
            column_id: params[:selectcolumn],
            report: params[:descript],
            employee_id: params[:selectemployee],
            elevator_id: params[:selectelevator])
        
    end

    def index
      interventions = Intervention.where("status = 'Pending'")

      render json: interventions
    end
    def update
        head :bad_request unless @intervention
        @intervention.update({
            status: params[:status],
            start_date_intervention: params[:start_date_intervention],
            end_date__intervention: params[:end_date_intervention]
        })
        render json: @intervention
    end
    private
    def intervention
        @intervention = Intervention.find_by(id: params[:intervention_id] )
    end
end
