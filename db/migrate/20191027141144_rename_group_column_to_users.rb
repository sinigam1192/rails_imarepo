class RenameGroupColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :group_id, :company_id
  end
end
