class RemoveTypeFromDepartment < ActiveRecord::Migration[6.0]
  def change
    remove_column :departments, :type, :string
  end
end
