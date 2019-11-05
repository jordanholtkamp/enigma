require 'Date'

class Offset
  def self.current_date
    day = Time.now.day.to_s.rjust(2, "0")
    month = Time.now.month.to_s.rjust(2, "0")
    year = Time.now.year.to_s.slice(2,3)
    day + month + year
  end
end