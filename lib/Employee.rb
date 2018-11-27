class Employee
	attr_accessor :name, :salary, :manager

	@@all = []

	def initialize(name, salary, manager)
		@name = name
		@salary = salary
		@manager = manager
		@@all << self
	end

	def manager_name
		@manager.name
	end

	def paid_over(salary)
		Employee.all.select {|employee| employee.salary > salary}
	end

	def self.find_by_department(department)
		all.find {|employee| employee.manager.department == department}
	end

	def tax_bracket
		Employee.all.select do |employee|
			employee.salary.between?(@salary-1000,@salary+1000)
		end
	end

	def self.all
		@@all
	end
end
