class AddManagerIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :manager_id, :int
  end
end
