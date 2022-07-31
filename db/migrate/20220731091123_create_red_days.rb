class CreateRedDays < ActiveRecord::Migration[7.0]
  def change
    create_table :red_days do |t|
      t.date :date
      t.string :reason
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
