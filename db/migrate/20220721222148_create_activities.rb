class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.string :ui_color
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end