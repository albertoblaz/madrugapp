class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.boolean :is_finished
      t.string :obs
      t.references :activity, null: false, foreign_key: true
      t.references :building_unit, null: false, foreign_key: true
      t.string :assignees

      t.timestamps
    end
  end
end
