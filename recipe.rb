def can_make(recipe, pantry)
  recipe.each do |_ingredient, _amount|
    return false if recipe.keys.count > pantry.keys.count
    return true
  end
end

def cakes(recipe, available)
  result = []

  return 0 if recipe.keys.count > available.keys.count

  recipe.each do |ingredient, amount|
    result << if available[ingredient]
                (available[ingredient] / amount)
              else
                0
              end
  end
  result.min
end

def user(filename)
  input = File.readlines(filename, chomp: true)
end 

 loop do 
  puts "Enter pantry filename:"
  input = gets.chomp
   user(filename)
  puts " What recipe should we bake next (Press enter to quit.)?"
  user(filename)
  if can_make(recipe, pantry)
    then cakes(recipe, available)
  puts "("You can make that recipe! Your pantry now looks like this:"), pantry"
