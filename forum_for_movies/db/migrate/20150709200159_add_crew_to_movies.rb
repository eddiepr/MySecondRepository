class AddCrewToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :director, :string
    add_column :movies, :producer, :string
  end
end
