class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string :name
      t.integer :episodeID
      t.string :director
      t.string :producer
      t.string :release_date
      t.text :opening_crawl

      t.timestamps
    end
  end
end
