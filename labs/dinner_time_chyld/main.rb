require 'pry'

load 'person.rb'
load 'carb.rb'
load 'protein.rb'
load 'factory.rb'

#only need two high level objects
@people = {}
@menus = {} #in this hash the keys are the days of the week and the values are the plates

puts "(p)late, p(e)rson or (q)uit?"
response = gets.chomp

#the below are all functions we are calling. from factory.rb
while response != 'q'
  if response == 'p'
    plate = create_plate #create a plate
    put_plate_in_menus(plate) #put it into a menu
  else #alt elsif response == 'e' ---- you can just use else since there is only one other option if user doesnt choose p
    add_menu_to_person #or choose a person and put a plate of food into the person's thing
  end

  puts "(p)late, p(e)rson or (q)uit?"
  response = gets.chomp
end

binding.pry