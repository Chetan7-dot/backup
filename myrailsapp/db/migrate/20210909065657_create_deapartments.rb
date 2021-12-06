class CreateDeapartments < ActiveRecord::Migration[6.1]
  def change
    create_table :deapartments do |t|
      t.string :dept_name

      t.timestamps
    end
  end
end
