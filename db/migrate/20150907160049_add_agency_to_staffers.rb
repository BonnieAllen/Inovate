class AddAgencyToStaffers < ActiveRecord::Migration
  def change
    add_column :staffers, :agency, :string
  end
end
