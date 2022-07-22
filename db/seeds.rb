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

project.activities.create(
  name: "Alicatado",
  planned_start_date: DateTime.now.prev_month.beginning_of_month.to_date,
  planned_end_date: DateTime.now.prev_month.beginning_of_month.next_day.to_date,
  start_date: DateTime.now.prev_month.beginning_of_month.to_date,
  end_date: DateTime.now.prev_month.beginning_of_month.next_day.to_date,
  obs: ""
)
project.activities.create(
  name: "Movimiento de tierras",
  planned_start_date: DateTime.now.prev_month.beginning_of_month.next_week.to_date,
  planned_end_date: DateTime.now.prev_month.beginning_of_month.next_week.next_day.to_date,
  start_date: DateTime.now.prev_month.beginning_of_month.next_week.to_date,
  end_date: DateTime.now.prev_month.beginning_of_month.next_week.next_day.to_date,
  obs: ""
)
project.activities.create(
  name: "Ventanas",
  planned_start_date: DateTime.now.beginning_of_month.to_date,
  planned_end_date: DateTime.now.beginning_of_month.next_day.next_day.to_date,
  start_date: DateTime.now.beginning_of_month.to_date,
  end_date: DateTime.now.beginning_of_month.next_day.next_day.to_date,
  obs: ""
)
project.activities.create(
  name: "Electricidad",
  planned_start_date: DateTime.now.beginning_of_month.next_week.to_date,
  planned_end_date: DateTime.now.beginning_of_month.next_week.next_day.to_date,
  start_date: DateTime.now.beginning_of_month.next_week.to_date,
  end_date: DateTime.now.beginning_of_month.next_week.next_day.to_date,
  obs: ""
)
project.activities.create(
  name: "Tuberias",
  planned_start_date: DateTime.now.to_date,
  planned_end_date: DateTime.now.next_day.next_day.to_date,
  start_date: DateTime.now.to_date,
  end_date: DateTime.now.next_day.next_day.to_date,
  obs: ""
)
project.activities.create(
  name: "Cerraduras",
  planned_start_date: DateTime.now.next_day.to_date,
  planned_end_date: DateTime.now.next_day.next_day.to_date,
  start_date: DateTime.now.next_day.to_date,
  end_date: DateTime.now.next_day.next_day.to_date,
  obs: ""
)

vivienda1 = BuildingUnit.create(name: "Vivienda 1", description: "", ui_color: "grey", project_id: project.id)
vivienda2 = BuildingUnit.create(name: "Vivienda 2", description: "", ui_color: "grey", project_id: project.id)

vivienda1.children.create(name: "Piso bajo", description: "", ui_color: "grey", project_id: project.id)
vivienda1.children.create(name: "Piso primero", description: "", ui_color: "grey", project_id: project.id)
vivienda1.children.create(name: "Piso segundo", description: "", ui_color: "grey", project_id: project.id)

vivienda2.children.create(name: "Piso bajo", description: "", ui_color: "grey", project_id: project.id)
vivienda2.children.create(name: "Piso primero", description: "", ui_color: "grey", project_id: project.id)
vivienda2.children.create(name: "Piso segundo", description: "", ui_color: "grey", project_id: project.id)