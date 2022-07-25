module RecordsHelper
  def day_off?(date)
    date.saturday? || date.sunday?
  end

  def today?(date)
    date.day == DateTime.now.day
  end
end
