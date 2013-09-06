class Ticket
  attr_reader :venue, :date
  attr_accessor :price

  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def Ticket.most_expensive(*tickets)
    tickets.max_by(&:price)
  end
end 

th = Ticket.new("Town Hall", "11/12/13")
cc = Ticket.new("Convention Center", "12/13/14")
fg = Ticket.new("Fairgrounds", "13/14/15/")

puts "We've created some tickets."
# p  th, cc
puts "The first is for a #{th.venue} event on #{th.date}."
puts "The second is for an event on #{cc.date} at #{cc.venue}."
puts "The third is for an event on #{fg.date} at #{fg.venue}."

th.price = 11.00
puts "The ticket costs $#{"%.2f" % th.price} for #{th.venue}."
th.price = 12.55
cc.price = 10.00
fg.price = 18.00

puts "The ticket costs $#{"%.2f" % cc.price} for #{cc.venue}."
puts "The ticket costs $#{"%.2f" % fg.price} for #{fg.venue}."

puts "Whoops -- the #{th.venue} event just went up. It now costs $#{"%.2f" % th.price}."

highest = Ticket.most_expensive(th, cc, fg)

puts "The highest-priced ticket is the one for #{highest.venue}."
