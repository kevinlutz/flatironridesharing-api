class CreateCompany < ActiveRecord::Migration[6.1]
  def change
    add_column :drivers, :company, :string
  end
end
