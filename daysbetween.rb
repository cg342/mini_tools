require 'date'


def date_of_next(day)
  date  = Date.parse(day)
  delta = date > Date.today ? 0 : 7
  date + delta
end

raw_date = date_of_next "Saturday"
sat= raw_date.strftime("%m/%d/%Y") 


print "Enter 2 dates:"
input = gets.chomp

date1 = input.split[0]
date2 = input.split[1]

begin
  a = Date.parse(date1)
  
rescue ArgumentError
  puts "First entry should be a date!"
end

begin
  b = Date.parse(date2)
  puts (b-a).to_i
rescue ArgumentError
  # puts "second entry is not a date"
  puts (a + date2.to_i)
end
