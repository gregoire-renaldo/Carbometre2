class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.references :footprint, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.float :value
      t.float :value2

      t.timestamps
    end
  end
end
