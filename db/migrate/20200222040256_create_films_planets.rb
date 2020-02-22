class CreateFilmsPlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :films_planets do |t|
      t.references :film, null: true, foreign_key: true
      t.references :planet, null: true, foreign_key: true

      t.timestamps
    end
  end
end
