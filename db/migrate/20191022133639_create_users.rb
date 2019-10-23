class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :mail
      t.string :password
      t.string :group_id
      t.boolean :admin

      t.timestamps
    end
  end
end
