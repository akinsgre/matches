# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

customer = Customer.create!({:first_name => "Greg", :last_name => "Akins"})
customer = Customer.create!({:first_name => "Raoul", :last_name => "Duke"})
