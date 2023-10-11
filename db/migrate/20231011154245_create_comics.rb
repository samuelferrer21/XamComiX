class CreateComics < ActiveRecord::Migration[7.0]
  def change
    create_table :comics do |t|
      t.string :title
      t.date :release_date
      t.float :cover_price
      t.references :publisher, null: false, foreign_key: true
      t.references :writer, null: false, foreign_key: true
      t.references :edition, null: false, foreign_key: true
      t.references :format, null: false, foreign_key: true

      t.timestamps
    end
  end
end
