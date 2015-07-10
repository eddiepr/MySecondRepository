class CreateConcertos < ActiveRecord::Migration
  def change
    create_table :concertos do |t|
      t.string :artist
      t.string :venue
      t.datetime :date
      t.string :city
      t.float :ticket_price
      t.string :description
      t.timestamps null: false
    end
  end
end
