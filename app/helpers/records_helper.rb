module RecordsHelper
  def day_off?(date)
    date.saturday? || date.sunday?
  end

  def today?(date)
    date == DateTime.now.to_date
  end
end
