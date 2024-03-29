# TDD - Week 10

* Folder /spec created and holding the spec test files
* File ElevatorMedia.rb contains the media streamer
* Implemented the joke in the intervention sign in page (views/devise/sessions/new.html.erb)
* Also completed in nodeJS as extra mile

To run the tests:
* Run "rspec --format doc" to see the output of the rspec tests
* Run "yarn test" to see the output of the nodejs tests

------------------------------------------------------------------------------------------------------------------------------------------------
# Consolidation - Week 9

## Website URL: (http://emmanuellad.com)
This week, we created a new intervention page with a login as well as a new intervention table in the database that receives all new interventions. I was able to complete the rest API in ruby by creating a function "index" for GET method and function "update" for PUT method in the interventions_controller.rb. It can be access with this  url: https://emmanuellad.com/api/interventions

To choose Body/form-data: Key:intervention_id => value:  Key:status => value: "" Key:start_date => value: "" Key:end_date => value: " " Then click SEND to update information.

Using C# and .NET Core, restAPI in https://github.com/EmmanuellaD/rocket_foundation_REST_API.git


------------------------------------------------------------------------------------------------------------------------------------------------
# Week 8: Offering and Exposing a Service on the Internet

This week we needed to add a new factinterventions table to the postgres database. A new migration was made to create the table at this link https://github.com/week7VietEmanuellaJulienTrevor/Rocket_Elevators_API/blob/master/db_second/migrate/20201109185400_fact_intervention.rb and a rake task in the Rakefile called 'rake exporttest' https://github.com/week7VietEmanuellaJulienTrevor/Rocket_Elevators_API/blob/master/Rakefile was made to transfer the data between the relational database to the new table of the datawarehouse "vnpostgres".

------------------------------------------------------------------------------------------------------------------------------------------------
# Week 7: Life is a Web Service

To connect to admin section of the site the login page is https://vndaos.com/admin. on login a map page will be displayed (loading time can be long, sorry) IBM-watson will give you a general status of the company on audio automatically.

This week we were able to secure our website to https by adding the command "skip_before_action :verify_authenticity_token" in the app/controllers/application_controller.rb. 

## Dropbox API 
Integration in app/models/customer.rb

To create a new customer and a new file in dropbox. You must first  upload a file with the contact form in index. 
Create a new user with the desired email address. After a customer can be created using that email and the company name. This will delete the binary file from the lead and upload the file to Dropbox in the Rocket_Elevators_Viet/rocket_elevators/company_name folder.

* When a contact becomes a customer, that is to say when the “Customers” table in the information system can be linked to a record in the “Leads” table, which itself offers the possibility of uploading files in a binary field of the table, it is necessary to trigger an archiving procedure .

## Slack API  
Integration in app/models/elevator.rb  

When a controller changes the status of an elevator (Ex.: From Active to Intervention), this status is reflected in the information system and persists in the operational database . When these status changes occur, a message is sent to the slack “elevator_operations” channel to leave a written record. 

* Instruction - Login as an employee and then from the dashboard, edit one of the existing elevator and change the status.

## ZenDesk API   
Integration in app/models/lead.rb and app/models/quote.rb  

* Instruction - To create a new “Question” type ticket in ZenDesk, you need to fill and submit the contact-us on the main page https://vndaos.com 
* Instruction - To create a new “Task” type ticket in ZenDesk, you need to fill and submit a quote on the quote page https://vndaos.com/quote.html 

## SendGrid API 
Integration in /app/models/sendgrid_mailer & app/controllers/leads_controller.rb

* Instruction - To send a thank you email automatically on the Rocket Elevators website, you need to fill and submit the contact-us on the main page https://vndaos.com
* Instruction - Sendgrid Free Plan offers shared pools of IPs and it doesn't guarantee a good reputation. In our case, hotmail emails are blocked.

## IBM Watson API 
Integration in /app/views/admin/map/_map.html.erb
- Audio configs in app/admin/map.rb
- Audio file in /app/assets/audio/first.wav

* The Text-to-Speech functionality starts every time the Admin Dashboard page appears. To hear Watson, make sure audio is allowed in your browser settings and click on the play button in the /admin page in the backoffice. this will load with the map as the first page of the backoffice. give it time to load.

## Twilio API 
Integration in /app/models/elevator.rb

* Instruction - To to get in touch with the technicians in case of problems the system generates text messages on change of elevator status to "Intervention"

## Google Maps API 
Integration in /app/views/admin/map/_map.html.erb

* The geolocation page must be a page in the Admin section of the website, available only to authenticated members.


#### Please take note that all API's are on a trial version and may not work in the future, and all API keys were stored only on the server side.

------------------------------------------------------------------------------------------------------------------------------------------------

### Week 4
This is our ruby on rails project for Rocket Elevators. The goal was to make an interactive website with an original static website made during Genesis and link it to a database that can store the Employee login data and the quote data in separate tables. The website has a back office in which an employee can login to access the data from quote.

### Week 5
This is our Ruby on Rails project for our client Rocket Elevators. The goal was to implement a full-fletched backend with Rails on our original static website made for Rocket Elevators during Genesis. 

We had to store various types of data related to our customers, employees, and users in general. We used 2 main databases: one in MySQL and one in PostgreSQL. 

### The MySQL database (operational database) stores the following tables of data:
- Users 
- Customers
- Employees
- Quotes 
- Leads (Contact Us requests)
- Addresses
- Buildings
- Building Details
- Batteries
- Columns
- Elevators

#### MySQL diagram
![enter image description here](https://cdn.discordapp.com/attachments/761645294386413609/769377009347854336/Screen_Shot_2020-10-23_at_9.48.06_PM.png)

### The PostgreSQL database (data warehouse) stores the following tables of data:
- FactQuotes
- FactContact
- FactElevator
- DimCustomers

#### PostgreSQL diagram
![enter image description here](https://cdn.discordapp.com/attachments/761645294386413609/769376962111209492/Screen_Shot_2020-10-23_at_9.49.05_PM.png)


Thanks to queries, the warehouse data stored in the PostgreSQL database will be able to answer these 3 questions:
1. How many contact requests are made per month?
2. How many bid solicitations are made per month?
3. How many elevators per customer do we have?


## The back-office
Our website has a dedicated back-office in which properly authenticated users can access and manage data stored in our database. To go to the login page for the back-office, go to (http://rocket-elevators-trevor.tk/admin/login).

![](https://i.gyazo.com/d6f3ca46f20f32af2afaa578f410e5e7.gif)
 
Once there, you can either login with a pre-existing account or signup with a new one.  We will authenticate your account and determine which role to attach it to, if any. What you can and cannot access in the back-office is purely determined by the role privileges you have. 

The back-office authentication is mainly done with the [CanCanCan](https://github.com/CanCanCommunity/cancancan) gem.
The back-office interface itself is done with the [ActiveAdmin](https://github.com/activeadmin/activeadmin) gem.

### Roles
Currently, we have 3 different types of accounts, each with different privileges and restrictions.
- Employees : 
	-	Can access & manage all tables and data inside of it. Basically has admin privileges.
-  Customers: 
	-	Can access their personal data in the following tables:
			- Customers
			- Elevators
			- Columns
			- Batteries
			- Buildings
			- Building Details
- Default guests :
	- Cannot access the back-office at all. If logged in, you are automatically redirected to the home index page of the website when you try to access the back-office.

### Accounts 
All accounts are defaulted with the password `password`.

Here's a pre-existing Employee account you could log into:
	- Email: nicolas.genest@codeboxx.biz
	- Password: `password`

Here's a pre-existing Customer account you could log into:
	- Email: ebony_hegmann@moen-moore.biz
	- Password: `password`
	
(The Customer accounts are randomly generated, and therefore they will change under a new `db:reset`.)

**These specific pre-existing accounts are subject to potential deletion in the future.

## Linked MySQL database
The MySQL database we started last week was completed this week with more tables that were seeded to simulate a functioning company with more than 40 years experience: 
1. A leads table consists of a list of all the messages and contact forms sent through the website. containing information pertaining to all the fields from the original contact form and the file is saved as a binary file.  
2. an Address table is a reference table for all the addresses used in the other tables it is linked to the customer and the buildings tables with the has_many command  
3. A customers Table references all Rocket elevators Customers and is linked the AdminUser table allowing them to connect and have a specific view. it also owns (has_many) buildings  
4. A buildings table has an address (belongs_to) and owns (has_many) building_details and also  
5. Batteries who in turn own  
6. Columns who own  
7. Elevators  
8. Finally the quote table table has been populated with data to correspond with the buildings they represent. The seed uses ruby programming language and a gem called [Faker](https://github.com/faker-ruby/faker) to populate the database with random data.



## Data Warehouse (w/ PostgreSQL)

 In order to be able to export data from MYSQL to POSTGRESQL you'll have to: 
 1. Browse in the the folders "lib/tasks/export.rake" and make sure that you are connected to right dbname. 
 2. Choose line 18 if you're running in you local machine or line 19 if you're running on the Codeboxx server and comment the one you're not using.  
 3. Please make sure you do the same for line "46 - 47", "66 - 67", and "89 - 90".
 4.  Go to your terminal. 
 5. Create the tables by running this commande  `rake second:db:create && rake second:db:migrate`.
 6. To export the data you'll run this second commande `rake export:datawarehouse`.
 7. Go to the POSTGRESQL terminal by typing `psql postgres`. 
 8. Type " \l" to list all your databases then " \c datawarehouse_development " to get into our database. 
 9. Type " \dt+" to list all the tables you should see " dimcustomers, factquote, factcontact, factelevator". 
 10. Type " SELECT * FROM 'name of the table you want to see' ;" don't forget the " ; " before hitting "Enter". 
 11. You will have all the data for each table.

## Queries
To analyze the business situation of the company for each month every year, we have extracted the necessary information from data warehouse (Postgresql) by using SQL queries: SELECT, SELECT distinct, FROM, GROUP BY, ORDER BY. Below are our queries to answer 6 questions:

#### 1. How many contact requests are made per month?

	select date_part('year', creation_date) as year, date_part('month', creation_date) as month, count(id)

	from factcontactC

	group by year, month

	order by year, month;

#### 2. How many bid solicitations are made per month?

	select date_part('year', creation) as year, date_part('month', creation) as month, count(id)

	from factquote

	group by year, month

	order by year, month;

#### 3. How many elevators per customer do we have?

	select company_name, sum(nb_elevator) as number_of_elevators

	from dimcustomers

	group by company_name

	order by number_of_elevators desc;

#### 4. The number of unique requests (ContactId) grouped by Month (Creation Date)?

	select distinct id, date_part('year', creation_date) as year, date_part('month', creation_date) as month

	from factcontact

	group by id, year, month

	order by year, month;

#### 5. The number of unique requests (QuoteId) grouped by Month (Creation Date)
	
	select distinct id, date_part('year', creation) as year, date_part('month', creation) as month

	from factquote

	group by id, year, month

	order by year, month;

#### 6. The number of elevators (ElevatorId) contained in the buildings belonging to each customer
	
	select customer_id, building_id, count(id)

	from factelevator

	group by building_id, customer_id

	order by building_id, customer_id;


## TEAM MEMBERS

TREVOR KITCHEN "Team Leader"
VIET-NGA DAO "Member"
ALIMOURANA BALDE "Member"
FABIEN DIMITROV "Member"


PUSHES have been made to trevor branch over the weekend however master Branch is left as it was on friday at deliverable creation
