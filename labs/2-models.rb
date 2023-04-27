# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# t.string "first_name"
# t.string "last_name"
# t.string "email"

# puts "Salespeople: #{Salesperson.all.count}"

# 2. insert 1-2 rows in salespeople table.

new_salesperson1 = Salesperson.new
new_salesperson1["first_name"] = "Dani"
new_salesperson1["last_name"] = "Hernandes"
new_salesperson1["email"] = "danielly.hernandes@kellogg.northwestern.edu"
new_salesperson1.save

# puts "Salespeople: #{Salesperson.all.count}"

new_salesperson2 = Salesperson.new
new_salesperson2["first_name"] = "Andre"
new_salesperson2["last_name"] = "Dupczak"
new_salesperson2["email"] = "andre.dupczak@kellogg.northwestern.edu"
new_salesperson2.save



# 3. write code to display how many salespeople rows are in the database

puts "Salespeople: #{Salesperson.all.count}"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

dani = Salesperson.find_by({"first_name" => "Dani", "last_name" => "Hernandes"})
dani["email"] = "danii.hernandes@gmail.com"
dani.save

# puts dani["email"]

# CHALLENGE:
# 5. write code to display each salesperson's full name

# first_name = dani["first_name"]
# last_name = dani["last_name"]
# puts "#{first_name} #{last_name}"

all_salespeople = Salesperson.all
    for salesperson in all_salespeople
        #do something
        first_name = salesperson ["first_name"]
        last_name = salesperson ["last_name"]
        puts "#{first_name} #{last_name}"
    end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
