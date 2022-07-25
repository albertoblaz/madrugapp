module ActivitiesHelper
  def select_field_list(activities)
    activities.map { |act| [act.to_s, act.id] }.unshift(["Select activity", -1])
  end
end
