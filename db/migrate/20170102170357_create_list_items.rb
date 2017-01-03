class CreateListItems < ActiveRecord::Migration[5.0]
  def change
    create_table :list_items do |t|
      t.integer :list_id, index: true
      t.integer :item_id, index: true
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
