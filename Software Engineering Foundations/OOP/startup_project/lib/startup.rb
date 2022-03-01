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



end
