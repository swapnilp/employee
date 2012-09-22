class CreateGadgags < ActiveRecord::Migration
  def change
    create_table :gadgags do |t|
      t.string :name, :null => false
      t.timestamps
    end
  end
end
