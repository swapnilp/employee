class AddDesignationToEmployee < ActiveRecord::Migration
  def up
    add_column :employes, :designation, :string
  end
  
  def down
    remove_column :employes, :designation
  end
end
