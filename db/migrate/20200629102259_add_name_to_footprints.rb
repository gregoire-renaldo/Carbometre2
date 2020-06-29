class AddNameToFootprints < ActiveRecord::Migration[6.0]
  def change
    add_column :footprints, :name, :string
  end
end
