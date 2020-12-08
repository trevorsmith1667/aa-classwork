class Employee

    def initialize(name, title, salary, boss)
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


end 