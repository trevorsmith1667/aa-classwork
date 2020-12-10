# require "byebug"

class Employee
    attr_reader :name, :title, :salary
    attr_accessor :boss
    # debugger
    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        self.boss = boss
    end 

    def boss#(boss)
        boss.add_employee(self) if !boss.nil? 
        boss
    end 

    def bonus(multiplier)
        # if title != "manager"
        self.salary * multiplier
        # else 
        #     bonus = self.total_salaries * multiplier

    end 
end 

class Manager < Employee
    # self.name = Manager.new if self.title == "manager"
    attr_accessor :add_employee, :total_salaries, :assign_employ
    def initialize(name, title, salary, boss = nil)
        super(name, title, salary, boss)
        @assign_employ = []
    end 

    def bonus(multiplier)
         self.total_salaries * multiplier
    end 

    def add_employee(name)
        @assign_employ << name
        name
    end

    def total_salaries
        total_salaries = 0
        self.assign_employ.each do |employee|
            if employee.is_a?(Manager)
                total_salaries += employee.salary + employee.total_salaries
            else
                total_salaries += employee.salary
            end
        end
        total_salaries
    end
end 

ned = Manager.new("Ned", "Founder", 1000000)
darren = Manager.new("darren", "Manager", 78000, ned)
franco = Employee.new("Franco", "Driver", 12000, darren)
sonny = Employee.new("Sonny", "Driver", 10000, darren)


