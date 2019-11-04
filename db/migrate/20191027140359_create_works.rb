class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.integer :company_id
      t.integer :report_id

      t.timestamps
    end
  end
end
