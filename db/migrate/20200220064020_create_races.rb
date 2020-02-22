class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :races do |t|
      t.string :name
      t.string :classification
      t.string :average_height
      t.string :average_lifespan
      t.string :language

      t.timestamps
    end
  end
end
