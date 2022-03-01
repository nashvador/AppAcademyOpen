require "employee"

class Startup
    
    attr_reader :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        if @salaries.has_key?(title)
            return true
        else
            return false
        end
    end

    def >(other_startup)
        if other_startup.funding > self.funding
            return false
        else
            return true
        end
    end

    def hire(name_employee, title_employee)
        if valid_title?(title_employee)
            @employees << Employee.new(name_employee,title_employee)
        else
            error
        end
    end

    def size
        return @employees.length
    end

    def pay_employee(employee_name)
        money_owed = @salaries[employee_name.title]

        if @funding >= money_owed
            employee_name.pay(money_owed)
            @funding -= money_owed
        else
            raise "not enough funding"
        end
    end

    def payday
        @employees.each do |employee|
            pay_employee(employee)
        end

    end

    def average_salary
        numerator = 0
        denominator = 0

        @employees.each do |employee|
            numerator += @salaries[employee.title]
            denominator += 1
        end       
        return numerator / denominator
        
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startup)
        @funding += startup.funding
        startup.salaries.each do |key, val|
            if @salaries.has_key?(key) == false
                @salaries[key] = val
            end
        end

        (@employees << startup.employees).flatten!

        startup.close
    end



end
