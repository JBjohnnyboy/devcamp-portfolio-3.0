class DropUserTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :users
  end
  
  def down
    rails ActiveRecord::IrreversibleMigration
  end
end
