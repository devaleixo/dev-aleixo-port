class CreateNiches < ActiveRecord::Migration[7.0]
  def change
    create_table :niches do |t|
      t.boolean :hiring
      t.boolean :freelancer
      t.boolean :work_together
      t.timestamps
    end
  end
end
