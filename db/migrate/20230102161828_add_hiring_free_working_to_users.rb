class AddHiringFreeWorkingToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :hiring, :boolean
    add_column :users, :freelancer, :boolean
    add_column :users, :work_together, :boolean
  end
end
