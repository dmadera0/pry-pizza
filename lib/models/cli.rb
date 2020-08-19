class Cli 
    attr_accessor :user
    def initialize user=nil
        @user=nil
    end

    def prompt
        TTY::Prompt.new
    end

    def start
        prompt.ask("Welcome to Pry's Pizza! What is your name?")
        @user=gets.strip
        puts "Hey #{@user}! Nice to meet you! Would you like to see our Menu y/n?"
        answer=gets.strip
        if answer == "y"
            puts "Show me pizzas"
            puts "Show me drinks"
            puts "Show me combo discounts"
        else
            start
        end
    end

    def show_pizza
        Pizza.show_all_pizza
    end

    def show_all_drinks
        Drink.all.map do |drink|
            puts drink.name
        end
    end

    def show_all_meal
        Meal.all.map do |meal|
            puts meal.name
        end
    end

        #menu_options = %w("Show me pizzas", "Show me drinks", "Show me combo discounts")
        #prompt.select("Please choose an option:", menu_options)
    

    def show_pizza
        Pizza.show_all_pizza
    end


    # def show_all_pizzas
    # puts "Maragita"
    # puts "Hawaiian"
    # puts "Meat Lover"
    # puts "Veggie Lover"
    # puts "Cheese"
    # puts "Popeye"
    # puts "Olive You"
    # puts "Hot Ass"
    # puts "Buffalo Chicken"
    # puts "Gucci Pizza"
    # puts "Peppa Pig"
    # end

    # def show_all_drinks
    #     puts "corona"
    #     puts "budwiser"
    #     puts " michelobe"
    #     puts "Budlight"
    # end

    # def show_all_combos
    #     puts " Margarita combo - Margarita and Corona"
    #     puts " College Kid Combo - Margarita and Budlight"
    #     puts " Flyin Hawaiian - Margarita and Corona"
    #     puts " Gentle Giant - Margarita and Michelobe"
    # end

#     def order_pizza(user_pizza)
#         show_pizza.select do |pizza| 
#             pizza.price: == user_pizza
# binding.pry

#     end



end
