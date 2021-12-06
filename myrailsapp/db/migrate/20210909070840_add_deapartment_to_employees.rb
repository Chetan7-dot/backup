class AddDeapartmentToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_reference :employees, :deapartment, null: false, foreign_key: true
  end
end
