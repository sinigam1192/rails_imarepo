class ChangeDataReportIdToWork < ActiveRecord::Migration[5.2]
  def change
    change_column :works, :report_id, :string
  end
end
