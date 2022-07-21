# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

project = Project.create(
  name: "Test Project",
  description: "Ejemplo de proyecto usado para el desarrollo",
  image_url: "",
  start_date: DateTime.now.beginning_of_month,
  planned_end_date: DateTime.now.end_of_month
)

Activity.create(name: "Alicatado", description: "", ui_color: "purple", project_id: project.id)
Activity.create(name: "Movimiento de tierras", description: "", ui_color: "green", project_id: project.id)
Activity.create(name: "Ventanas", description: "", ui_color: "red", project_id: project.id)
Activity.create(name: "Electricidad", description: "", ui_color: "yellow", project_id: project.id)
Activity.create(name: "Tuberias", description: "", ui_color: "blue", project_id: project.id)
Activity.create(name: "Cerraduras", description: "", ui_color: "black", project_id: project.id)