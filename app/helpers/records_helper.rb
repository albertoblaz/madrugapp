module RecordsHelper
  def is_weekend?(date)
    date.saturday? || date.sunday?
  end

  def today?(date)
    date == DateTime.now.to_date
  end
end
