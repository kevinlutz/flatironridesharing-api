class EditNames < ActiveRecord::Migration[6.1]
  def change
    remove_column :drivers, :first_name
    remove_column :drivers, :last_name
    remove_column :riders, :first_name
    remove_column :riders, :last_name
    add_column :drivers, :name, :string
    add_column :riders, :name, :string
  end
end
