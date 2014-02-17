def find_out_christmas_weekday(date)
  if date.class == Date
    date.strftime("%A")
  else
    year = nil
    date.split(" ").each { |x| year = x if x.length == 4 }
    Time.new(year, 12, 25).strftime("%A")
  end
end