class AddImageToEditions < ActiveRecord::Migration[7.0]
  def change
    add_column :editions, :image, :string
  end
end
