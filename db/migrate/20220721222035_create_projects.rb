class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :description
      t.string :image_url
      t.date :start_date
      t.date :planned_end_date

      t.timestamps
    end
  end
end
