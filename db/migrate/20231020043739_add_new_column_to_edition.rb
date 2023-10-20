class AddNewColumnToEdition < ActiveRecord::Migration[7.0]
  def change
    add_column :editions, :description, :text
  end
end
