class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :diameter
      t.string :climate
      t.string :population

      t.timestamps
    end
  end
end
