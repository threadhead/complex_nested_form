class CreateSubUnits < ActiveRecord::Migration
  def change
    create_table :sub_units do |t|
      t.integer :organization_id
      t.string :name

      t.timestamps
    end
  end
end
