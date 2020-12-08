# require "byebug"

class Employee
    attr_reader :name, :title, :salary
    attr_accessor :boss
    # debugger
    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss 
    end 

    def boss(boss)
        self.boss = boss if boss.nil?
    end 

    def bonus(multiplier)
        # if title != "manager"
        bonus = @salary * multiplier
        # else 
        #     bonus = self.total_salaries * multiplier

    end 
end 

class Manager < Employee
    # self.name = Manager.new if self.title == "manager"
    attr_accessor :add_employee, :total_salaries
    def initialize(name, title, salary)
        super
        @assign_employ = []
        @total_salaries = 0 

    end 

    def bonus
        assign_employ.each {|employee| total_salaries += employee.salary}
        super(multiplier)
    end 

    def add_employee(name)
        assign_employ << name
        @name
    end
end 

ned = Manager.new("Ned", "Founder", 1000000)
darren = Manager.new("darren", "Manager", 500000)


