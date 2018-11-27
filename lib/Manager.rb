class Manager
	attr_accessor :name, :department, :age

	@@all = []

	def initialize(name, department, age)
		@name = name
		@department = department
		@age = age
		@@all << self
	end

	def employees
		Employee.all.select {|employee| employee.manager == self}
	end

	def hire_employee(name, salary)
		 Employee.new(name, salary, self)
	end

	def self.all_departments
		@@all.map {|manager| manager.department}
	end

	def self.average_age
		sum = 0
		count = 0
		all.map do |manager|
			count +=1
			sum += manager.age
		end
		sum.to_f/count
	end

	def self.all
		@@all
	end
end
