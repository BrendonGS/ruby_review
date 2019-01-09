# 1. Create a new file called manager.rb. Paste in the code, I’m giving you below

# 2. Create a method in the Manager class called give_all_raises that loops through each of the manager’s employees and gives them a raise (using the give_annual_raise method). Demonstrate how it works.

# 3. Create a method in the Manager class called fire_all_employees that loops through each of the manager’s employees and changes their active status to false.

class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{ @first_name } #{ @last_name } makes #{ @salary } a year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

class Manager < Employee
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending report..."
    # code to send report
    puts "Email sent."
  end

  def give_all_raises
    # the list of employee objects for this manager
    # increase salary by 5%
    # go thru employees one at a time
    # give the individual employee a raise

    @employees.each do |employee| 
      employee.give_all_raises
    end 
  end

  def fire_all_employees
    # the list of employees aka @employees
    # change all emlpoyees that managers moniters to an active status of true
    # access to each employee one at a time
    # change active status to false

    @employees.length.times { |index|  @employees[index].active = false }
  end
end


employee_1 = Employee.new(
                          first_name: "Nick", 
                          last_name: "Cage", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Julia", 
                          last_name: "Andrews", 
                          salary: 80000, 
                          active: true
                          )

manager = Manager.new(
                      first_name: "Grace",
                      last_name: "Hopper",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )

p employee_1.active
manager.fire_all_employees
p employee_1.active

