pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]

# eat function you have to iterate through each of the ingredients

class Person

  attr_accessor :stomach, :age, :allergies
  def initialize(name, gender, age, allergies)
  	@name=name
  	@gender=gender
  	@age=age
  	@stomach=[]
  	@allergies=allergies
  end

  def eat(food)
  	# is_allergic = false
  	food.each do |ingredient|
  		# puts "ingredient: " + ingredient.to_s
  		# puts "food: " + food.to_s
  		if @allergies.include?(ingredient)
  			# is_allergic = true
  			puts "allergic!"
  			@stomach=[]
  			break  				  
  		else
	  		# unless is_allergic
	  		#@stomach.push(ingredient)
	    	@stomach << ingredient
  		end
	end
	puts "person ate"
	# p @stomach
  end
end

Bob = Person.new('bob', 'm', 20, ['gluten'])

Bob.eat(pizza)
p Bob
p Bob.stomach
p Bob.allergies
