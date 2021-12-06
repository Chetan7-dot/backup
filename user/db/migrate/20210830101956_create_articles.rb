class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :firstname
      t.string :lastname
      t.text :email
      t.string :password

      t.timestamps
    end
  end
end
