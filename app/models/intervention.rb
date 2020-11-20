class Intervention < ApplicationRecord
  belongs_to :customer, optional: true
  belongs_to :building, optional: true
  belongs_to :battery, optional: true
  belongs_to :column, optional: true
  belongs_to :elevator, optional: true
  belongs_to :employee, optional: true

#    after_create :create_new_zendesk_ticket

    def new_zendesk_intervention_ticket
        ZendeskAPI::Ticket.create!($client, 
            :subject => "New request", 
            :comment => { 
                :value => "New intervention created by employee ID: #{self.author},
                Customer Id: #{self.customer_id}
                Building Id: #{self.battery_id}
                Battery Id: #{self.battery_id}
                Column Id: #{self.column_id}
                Elevator Id: #{self.elevator_id}
                Employee Id: #{self.employee_id}
                Description: #{self.report}
"
            }, 
            :requester => { 
                "name": self.author_id, 
                "email": self.email 
            },
            :priority => "normal",
            :type => "problem"
            )
        end

end



