class Intervention3sController < InheritedResources::Base

  private

    def intervention3_params
      params.require(:intervention3).permit(:customer_id, :employee_id, :battery_id, :column_id)
    end

end
