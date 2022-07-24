class CreateSubcontractors < ActiveRecord::Migration[7.0]
  def change
    create_table :subcontractors do |t|
      t.string :name, null: false
      t.string :obs
      t.string :ui_color
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
