class Employee < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_one :employee_detail
end
