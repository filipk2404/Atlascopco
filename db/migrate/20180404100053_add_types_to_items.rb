class AddTypesToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :stocking, :string
    add_column :items, :picking, :string
  end
end
