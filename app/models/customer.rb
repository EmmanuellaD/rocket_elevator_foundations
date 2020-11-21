class Customer < ApplicationRecord
    belongs_to :admin_user
    after_create :dropbox
    after_update :dropbox

    # belongs_to :user, optional:true

    has_many :buildings
    def display_name
        "#{company_name}"
    end

    belongs_to :address
    belongs_to :employee
    
    # has_many :quotes, through: :admin_users
    has_many :batteries
    def display_name
        "#{company_name}"
    end

    has_many :columns
    def display_name
        "#{company_name}"
    end

    has_many :elevators
    def display_name
        "#{company_name}"
    end

    has_many :building_details
    def display_name
        "#{company_name}"
    end

    def dropbox
        customer_leads = Lead.where(company_name: self.company_name)
        puts "-------------------------------------------------------"
        pp customer_leads
        puts customer_leads.count
        puts "-------------------------------------------------------"


        client = DropboxApi::Client.new ENV["access_token"]
        
         customer_leads.each do |l|
         
          begin
            client.get_metadata("/rocket-elevators/#{l.company_name}") 
           
          rescue => exception
          
            client.create_folder("/rocket-elevators/#{l.company_name}")
            puts "-------------------------------------------------------"
            puts "create folder."
            puts "-------------------------------------------------------"
        end
          #Transfer the binary file to Dropbox
          if l.attached_file != nil
            begin

              client.get_metadata("/rocket-elevators/#{l.company_name}")
        
              
              file_content = l.attached_file

             
              file_name = l.attached_file_path
              
              client.upload("/rocket-elevators/#{l.company_name}/#{file_name}", file_content)
              
          end
          #Remove the attached file from lead table after success transfer to dropbox
          removed = ""
          l.update_attribute(:attached_file, removed)
          l.update_attribute(:attached_file_path, removed)
      end
    end
  end
   


end



