class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :item_code
      t.string :description
      t.string :extra_description

      t.timestamps
    end
  end
end
