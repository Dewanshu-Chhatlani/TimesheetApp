# Timesheet Application

Ruby version - 2.6.5
Rails version - 6.0
Database - Postgresql

This is a simple timesheet application built using ruby on rails.

## User
User can perform the following actions:
1. Login.
2. Sign up.
3. Change password
4. Fill his/her timesheet.
5. View his/her timesheet entries.

## Admin
An admin can do the following activities:
1. Log In as Admin.
2. View all the timesheet entries by all the users.
3. Edit a particular timesheet entry.
4. Delete a particular timesheet entry.

## To run this application:
1. Clone/Download this repository.
2. Open Command Prompt and navigate to the cloned repository.
3. Run `bundle install`
4. Change the contents of `config/database.yml` to configure the database.
5. Run `rails db:setup` to set up the database.
6. Run `rails server` to start the server.
7. Open your browser and visit `http://localhost:3000/` to see the appliction running.
