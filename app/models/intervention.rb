class Intervention < ApplicationRecord
  belongs_to :customer, optional: true
  belongs_to :building, optional: true
  belongs_to :battery, optional: true
  belongs_to :column, optional: true
  belongs_to :elevator, optional: true
  belongs_to :employee, optional: true

    # after_create :create_new_zendesk_ticket
    

    def create_new_zendesk_ticket
        client = ZendeskAPI::Client.new do |config|
            config.url = ENV['ZENDESK_URL']
            config.username = ENV['ZENDESK_USERNAME']
            config.token = ENV['ZENDESK_TOKEN']
        end
        ZendeskAPI::Ticket.create!(client,
            :subject => "New intervention created",
            :comment => {
                :value => "New intervention created,
                Customer id : #{self.customer_id}
                Building id: #{self.battery_id}
                Battery id: #{self.battery_id}
                Column id: #{self.column_id}
                Elevator id: #{self.elevator_id}
                employee id: #{self.employee_id}
                Description: #{self.report}
                "
            },
            :priority => "normal",
            :type => "problem"
            )
    end
end





