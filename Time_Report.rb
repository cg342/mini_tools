###### This program generates time report text 


require 'date'
#date_today = Date.today.to_s

#date  = Date.parse(Saturday)
#delta = date > Date.today ? 0 : 7
#date += delta



def date_of_next(day)
  date  = Date.parse(day)
  delta = date > Date.today ? 0 : 7
  date + delta
end

raw_date = date_of_next "Saturday"
sat= raw_date.strftime("%m/%d/%Y")


print "hours worked on Monday through Friday: "
input = gets.chomp

mon = input.split[0]
tues = input.split[1]
wed = input.split[2]
thurs = input.split[3]
fri = input.split[4]

houzhui = " hours Reg"
puts "\n\nTime Reporting for Week ending Saturday " + sat + "\n\n"

if mon.to_i !=0
  puts "Mon -\t\t\t" + mon + " hours Regular work"
end

if tues.to_i !=0
  puts "Tues -\t\t\t" + tues + houzhui
end

if wed.to_i !=0 
  puts "Wed -\t\t\t" + wed +  houzhui
end

if thurs.to_i !=0
  puts "Thurs -\t\t\t" + thurs + houzhui
end

if fri.to_i !=0
  puts "Fri -\t\t\t" + fri + houzhui
end 

total = mon.to_i + tues.to_i + wed.to_i + thurs.to_i + fri.to_i

puts "--------------------------------------"
puts "Total Hours: " + total.to_s + houzhui + "\n\n\n"
