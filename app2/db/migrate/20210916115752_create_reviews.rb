class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :r_name
      t.string :comment

      t.timestamps
    end
  end
end
