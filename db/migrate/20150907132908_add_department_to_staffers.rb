class AddDepartmentToStaffers < ActiveRecord::Migration
  def change
    add_column :staffers, :department, :string
  end
end
