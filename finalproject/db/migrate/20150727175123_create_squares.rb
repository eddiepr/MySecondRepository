class CreateSquares < ActiveRecord::Migration
  def change
    create_table :squares do |t|
      t.integer :game_id
      t.integer :x
      t.integer :y
      t.string :contents

      t.timestamps null: false
    end
  end
end
