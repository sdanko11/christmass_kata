def find_out_christmas_weekday(date)
  if date.class == Time
    date.to_date.strftime("%A")
  else
    year = nil
    date = date.split(" ")
    date.each { |x| year = x if x.length == 4 }
    Time.new(year, 12, 25).to_date.strftime("%A")
  end
end