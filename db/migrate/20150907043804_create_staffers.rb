class CreateStaffers < ActiveRecord::Migration
  def change
    create_table :staffers do |t|
      t.string :first
      t.string :last
      t.string :username
      t.string :email
      t.float :phone
      t.attachment :profile

      t.timestamps null: false
    end
  end
end
