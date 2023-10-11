class CreateFormats < ActiveRecord::Migration[7.0]
  def change
    create_table :formats do |t|
      t.string :format

      t.timestamps
    end
  end
end
