class CreateCharactersFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :characters_films do |t|
      t.references :character, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true

      t.timestamps
    end
  end
end
