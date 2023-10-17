class AddLogoToPublishers < ActiveRecord::Migration[7.0]
  def change
    add_column :publishers, :logo, :string
  end
end
