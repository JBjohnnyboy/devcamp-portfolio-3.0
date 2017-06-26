class RenamePercentUntilizedColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :skills, :percent_unitlized, :percent_utitlized
  end
end
