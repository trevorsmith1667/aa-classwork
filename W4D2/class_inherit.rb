class Employee

    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss 
    end 

    def bonus(salary, multiplier)
        bonus = salary * multiplier
    end 
end 

class Manager < Employee
    attr_accessor :assign_employ
    def initialize
        super
        @assign_employ = []

    end 

    def bonus
        total_salaries = 0
        assign_employ.each {|employee| total_salaries += employee.salary}
        super(total_salaries, multiplier)
    end 

    def add_employee(name)
        assign_employ << name
        @name
    end
end 

ned = Employee.new("Ned", "Founder", 1000000)
darren = Employee.new("darren", "Manager", 500000, ned)
# ned = Employee.new("Ned", "Founder", 1000000)
# ned = Employee.new("Ned", "Founder", 1000000)