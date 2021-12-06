class AddStatusToAuthor < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :status, :integers
  end
end
