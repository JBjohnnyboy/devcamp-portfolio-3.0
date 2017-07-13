class ChangeColumnNameSkillsPercentUtilized < ActiveRecord::Migration[5.0]
  def change
    rename_column :skills, :percent_utitlized, :percent_utilized
  end
end
