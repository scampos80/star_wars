class CreateFilmsRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :films_races do |t|
      t.references :film, null: true, foreign_key: true
      t.references :race, null: true, foreign_key: true

      t.timestamps
    end
  end
end
