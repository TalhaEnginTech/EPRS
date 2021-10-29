class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :cnic
      t.string :email
      t.date :joindate
      t.string :role

      t.timestamps
    end
  end
end
