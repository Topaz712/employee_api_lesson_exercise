## Create a new Rails application as an API of course, then create the following tables

- employee
  - first_name:string
  - last_name:string

- employee_details
  - employee:references
  - bio:text
  - salary:integer
  - 
Create a one-to-one association between the employee and employee_details table.

Then create a new employee along with their employee details.


1. Create rails api project in wsl
  - run `rails new employee_api_lesson_exercise --api`
  - change directory in project created `cd employee_api_lesson_exercise`
  - open new project created in vscode `code .`

2. In terminal run the following to create/generate the two models
  - `rails generate model Employee first_name:string last_name:string`
    Then run
  - `rails generate model EmployeeDetail employee:references bio:text salary:int`

3. Add code to files in employee.rb and employee_detail.rb, located in app/models/

In *employee.rb* file:
```
class Employee < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_one :employee_detail
end
```

In *employee_detail.rb* file:
```
class EmployeeDetail < ApplicationRecord
  belongs_to :employee
end
```

4. Run `rails db:migrate` to run migrations to create the database tables

5. Run `rails console` to be able to create the new employee and employee details from the next step

6. Run the following code to create an *Employee* record and associate the *EmployeeDetail* record with a one-to-one association:
   - `employee = Employee.create(first_name: "John", last_name: "Doe", employee_detail: EmployeeDetail.new(bio: "I am a software engineer", salary: 100000))`
  
*A record is an individual entry in the database table and each record represents a specific instance of the model*
