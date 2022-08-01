project = Project.create(
  name: "Test Project",
  description: "Ejemplo de proyecto usado para el desarrollo",
  image_url: "",
  start_date: Date.parse("2022-07-01"),
  planned_end_date: Date.parse("2023-03-31"),
)

project.red_days.create(date: Date.parse("2022-07-25"), reason: "")
project.red_days.create(date: Date.parse("2022-08-15"), reason: "Dia de todas las virgenes")
project.red_days.create(date: Date.parse("2022-08-16"), reason: "")
project.red_days.create(date: Date.parse("2022-08-17"), reason: "")
project.red_days.create(date: Date.parse("2022-08-18"), reason: "")
project.red_days.create(date: Date.parse("2022-08-19"), reason: "")
project.red_days.create(date: Date.parse("2022-10-12"), reason: "Fiesta Nacional")
project.red_days.create(date: Date.parse("2022-10-31"), reason: "Dia de muertos")
project.red_days.create(date: Date.parse("2022-11-01"), reason: "Dia de todos los santos")
project.red_days.create(date: Date.parse("2022-11-09"), reason: "")
project.red_days.create(date: Date.parse("2022-12-06"), reason: "Dia de la Constitucion")
project.red_days.create(date: Date.parse("2022-12-08"), reason: "Dia de la Inmaculada")
project.red_days.create(date: Date.parse("2022-12-23"), reason: "")
project.red_days.create(date: Date.parse("2022-12-26"), reason: "Boxing day")
project.red_days.create(date: Date.parse("2023-01-02"), reason: "")
project.red_days.create(date: Date.parse("2023-01-06"), reason: "")

act1 = Activity.create(
  name: "Alicatado",
  planned_start_date: DateTime.now.prev_month.beginning_of_month.to_date,
  planned_end_date: DateTime.now.prev_month.beginning_of_month.next_day.to_date,
  start_date: DateTime.now.prev_month.beginning_of_month.to_date,
  end_date: DateTime.now.prev_month.beginning_of_month.next_day.to_date,
  obs: "",
  project_id: project.id
)
act2 = Activity.create(
  name: "Movimiento de tierras",
  planned_start_date: DateTime.now.prev_month.beginning_of_month.next_week.to_date,
  planned_end_date: DateTime.now.prev_month.beginning_of_month.next_week.next_day.to_date,
  start_date: DateTime.now.prev_month.beginning_of_month.next_week.to_date,
  end_date: DateTime.now.prev_month.beginning_of_month.next_week.next_day.to_date,
  obs: "",
  project_id: project.id
)
act3 = Activity.create(
  name: "Ventanas",
  planned_start_date: DateTime.now.beginning_of_month.to_date,
  planned_end_date: DateTime.now.beginning_of_month.next_day.next_day.to_date,
  start_date: DateTime.now.beginning_of_month.to_date,
  end_date: DateTime.now.beginning_of_month.next_day.next_day.to_date,
  obs: "",
  project_id: project.id
)
act4 = Activity.create(
  name: "Electricidad",
  planned_start_date: DateTime.now.beginning_of_month.next_week.to_date,
  planned_end_date: DateTime.now.beginning_of_month.next_week.next_day.to_date,
  start_date: DateTime.now.beginning_of_month.next_week.to_date,
  end_date: DateTime.now.beginning_of_month.next_week.next_day.to_date,
  obs: "",
  project_id: project.id
)
act5 = Activity.create(
  name: "Tuberias",
  planned_start_date: DateTime.now.to_date,
  planned_end_date: DateTime.now.next_day.next_day.to_date,
  start_date: DateTime.now.to_date,
  end_date: DateTime.now.next_day.next_day.to_date,
  obs: "",
  project_id: project.id
)
act6 = Activity.create(
  name: "Cerraduras",
  planned_start_date: DateTime.now.next_day.to_date,
  planned_end_date: DateTime.now.next_day.next_day.to_date,
  start_date: DateTime.now.next_day.to_date,
  end_date: DateTime.now.next_day.next_day.to_date,
  obs: "",
  project_id: project.id
)

sub1 = Subcontractor.create(
  name: "Fuentepica",
  obs: "",
  ui_color: "yellow",
  project_id: project.id
)
sub2 = Subcontractor.create(
  name: "OCL",
  obs: "",
  ui_color: "blue",
  project_id: project.id
)
sub3 = Subcontractor.create(
  name: "Excateban",
  obs: "",
  ui_color: "purple",
  project_id: project.id
)
sub4 = Subcontractor.create(
  name: "Liquete",
  obs: "",
  ui_color: "grey",
  project_id: project.id
)
sub5 = Subcontractor.create(
  name: "Sostres i Envans",
  obs: "",
  ui_color: "green",
  project_id: project.id
)

contract1_1 = Subcontract.create(
  activity_id: act1.id,
  subcontractor_id: sub1.id,
  project_id: project.id
)
contract1_2 = Subcontract.create(
  activity_id: act1.id,
  subcontractor_id: sub2.id,
  project_id: project.id
)
contract2 = Subcontract.create(
  activity_id: act2.id,
  subcontractor_id: sub2.id,
  project_id: project.id
)
contract3 = Subcontract.create(
  activity_id: act3.id,
  subcontractor_id: sub3.id,
  project_id: project.id
)
contract4 = Subcontract.create(
  activity_id: act4.id,
  subcontractor_id: sub4.id,
  project_id: project.id
)
contract5 = Subcontract.create(
  activity_id: act5.id,
  subcontractor_id: sub5.id,
  project_id: project.id
)
contract6 = Subcontract.create(
  activity_id: act6.id,
  subcontractor_id: sub1.id,
  project_id: project.id
)

vivienda1 = BuildingUnit.create(name: "Vivienda 1", description: "", ui_color: "grey", project_id: project.id)
vivienda2 = BuildingUnit.create(name: "Vivienda 2", description: "", ui_color: "grey", project_id: project.id)

vivienda1.children.create(name: "Piso bajo", description: "", ui_color: "grey", project_id: project.id)
vivienda1.children.create(name: "Piso primero", description: "", ui_color: "grey", project_id: project.id)
vivienda1.children.create(name: "Piso segundo", description: "", ui_color: "grey", project_id: project.id)

vivienda2.children.create(name: "Piso bajo", description: "", ui_color: "grey", project_id: project.id)
vivienda2.children.create(name: "Piso primero", description: "", ui_color: "grey", project_id: project.id)
vivienda2.children.create(name: "Piso segundo", description: "", ui_color: "grey", project_id: project.id)