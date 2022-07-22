class CreateBuildingUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :building_units do |t|
      t.string :name, null: false
      t.string :description
      t.string :ui_color
      t.references :building_unit, null: true, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
