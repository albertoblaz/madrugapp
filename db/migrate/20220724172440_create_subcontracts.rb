class CreateSubcontracts < ActiveRecord::Migration[7.0]
  def change
    create_table :subcontracts do |t|
      t.references :activity, null: false, foreign_key: true
      t.references :subcontractor, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
