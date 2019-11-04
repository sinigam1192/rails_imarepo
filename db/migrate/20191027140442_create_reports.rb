class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :name
      t.integer :status
      t.date :date
      t.time :in_time
      t.time :out_time
      t.string :adress
      t.float :latitude
      t.float :longitude
      t.text :content_start
      t.text :cotnent_in
      t.text :content_out
      t.time :arrival_time
      t.time :withdrawal_time
      t.integer :from_user
      t.integer :to_user
      t.string :items

      t.timestamps
    end
  end
end
