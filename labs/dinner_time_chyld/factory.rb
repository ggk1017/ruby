def create_food(response) #this is where we either create a p or c 
  puts "Calories?"
  calories = gets.chomp
  puts "Servings?"
  servings = gets.chomp
  puts "Prep Time?"
  prep = gets.chomp

  if response == 'p'
    puts "Animal?"
    animal_type = gets.chomp
    food = Protein.new(animal_type, calories, servings, prep)
  else
    puts "Grain?"
    grain_type = gets.chomp
    food = Carb.new(grain_type, calories, servings, prep)
  end
end

def create_plate
  plate = [] #create an empty array
  puts "(p)rotein or (c)arb or (q)uit?"
  response = gets.chomp

  while response != 'q'
    plate << create_food(response) #call the function above. this is why create_plate is underneath create food...because it has to know what create food is 
    puts "(p)rotein or (c)arb or (q)uit?"
    response = gets.chomp
  end

  plate
end

def put_plate_in_menus(plate)
  puts "List of menus (or new name): #{@menus.keys.join(', ')}?" #keys are the 'week1' 'week2' 'week3' of the menu hash
  menu_name = gets.chomp.downcase
  puts "What day (sunday to saturday)?"
  menu_day = gets.chomp.downcase
  #one line if statement
  #this is how you can add a 'new name' to the menu hash. from the menu_name getx.chomp from above
  @menus[menu_name] = {} if @menus[menu_name].nil? # "if @menus[...." is true (nil), do the left side.
  @menus[menu_name][menu_day] = plate #refer to notes.
end

def add_menu_to_person #same as above...add to existing or create a new
  puts "List of people (or new name): #{@people.keys.join(', ')}?"
  person_name = gets.chomp.downcase
  #people is a hash with all the people. so if person_name is not in people, create a person with (person_name) - function below
  @people[person_name] = create_person(person_name) if @people[person_name].nil?
  puts "List of menus: #{@menus.keys.join(', ')}?"
  menu_name = gets.chomp.downcase
  @people[person_name].menus << @menus[menu_name] if check_calorie_count(@people[person_name], @menus[menu_name])
end

def create_person(name)
  puts "Type"
  type = gets.chomp
  Person.new(name, type)
end

#.inject(&:+) --> adds all the numbers in an array
#.select{|z| z> 1000} --> select all the numbers in the array that are above 1000

def check_calorie_count(person, menu)
  if person.type == "kid"
    menu.values.map{|x| x.map{|y| y.calories_per_serving.to_i * y.number_of_servings.to_i}.inject(&:+)}.select{|z| z > 1000}.empty?
  else
    true
  end
end