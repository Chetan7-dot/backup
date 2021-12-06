class AddBlackListToCustomer < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :blacklist, :boolean
  end
end
