class AddNameToWork < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :name, :string
  end
end
