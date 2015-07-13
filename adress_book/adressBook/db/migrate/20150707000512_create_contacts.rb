class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :adress
      t.string :phone_numbers
      t.string :email_addresses

      t.timestamps null: false
    end
  end
end
