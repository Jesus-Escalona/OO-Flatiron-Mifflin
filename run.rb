require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

jesus = Manager.new("Jesus", "Development", 28)
ramon = Manager.new("Ramon", "Back", 30)
rob = Manager.new("Rob", "Front", 25)

luis = Employee.new("luis", 2000, jesus)
robby = Employee.new("Robby", 1000, jesus)
carlos = Employee.new("carlos", 3000, ramon)
jose = Employee.new("jose", 5000, rob)


binding.pry
puts "done"
