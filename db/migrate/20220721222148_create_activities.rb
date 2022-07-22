class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name, null: false
      t.string :obs
      t.date :planned_start_date
      t.date :planned_end_date
      t.date :start_date
      t.date :end_date
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
