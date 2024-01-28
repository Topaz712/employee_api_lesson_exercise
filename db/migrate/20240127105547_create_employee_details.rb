class CreateEmployeeDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :employee_details do |t|
      t.references :employee, null: false, foreign_key: true
      t.text :bio
      t.integer :salary

      t.timestamps
    end
  end
end
