class AddImageCoverToComics < ActiveRecord::Migration[7.0]
  def change
    add_column :comics, :image_cover, :string
  end
end
