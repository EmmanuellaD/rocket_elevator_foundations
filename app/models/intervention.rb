class Intervention < ApplicationRecord
  belongs_to :customer, optional: true
  belongs_to :building, optional: true
  belongs_to :battery, optional: true
  belongs_to :column, optional: true
  belongs_to :elevator, optional: true
  belongs_to :employee, optional: true

   after_create :create_new_zendesk_ticket
    def create_new_zendesk_ticket
        client = ZendeskAPI::Client.new do |config|
            config.url = ENV['ZENDESK_URL']
            config.username = ENV['ZENDESK_USERNAME']
            config.token = ENV['ZENDESK_TOKEN']
        end
        ZendeskAPI::Ticket.create!(client,
            :subject => "New intervention created",
            :comment => {
                # :value => "New intervention created by employee ID: #{self.author},
                :value => "New intervention created,
                Customer ID: #{self.customer_id}
                Building ID: #{self.battery_id}
                Battery ID: #{self.battery_id}
                Column ID: #{self.column_id}
                Elevator ID: #{self.elevator_id}
                Assigned to employee ID: #{self.employee_id}
                Description: #{self.report}
                "
            },
            # :requester => {
            #     "name": Employee.where(admin_user_id: self.author).first.first_name + " " + Employee.where(admin_user_id: self.author).first.last_name,
            #     "email": Employee.where(admin_user_id: self.author).first.email
            # },
            :requester => {
                "name": "Emmanuella",
                "email": "emmanuella0524@yahoo.com"
            },
            :priority => "normal",
            :type => "problem"
            )
    end

end



