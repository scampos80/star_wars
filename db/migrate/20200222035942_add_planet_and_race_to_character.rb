class AddPlanetAndRaceToCharacter < ActiveRecord::Migration[6.0]
  def change
    add_reference :characters, :planet, null: true, foreign_key: true
    add_reference :characters, :race, null: true, foreign_key: true
  end
end
