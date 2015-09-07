class AddDepartmentIdToStaffers < ActiveRecord::Migration
  def change
    add_column :staffers, :department_id, :integer
  end
end
