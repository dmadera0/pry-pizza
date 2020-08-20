class Cli 

    attr_accessor :user
    def initialize 
        @user=nil
    end

    def prompt
        TTY::Prompt.new
    end

    def banner
        box = TTY::Box.frame(width: 100, height: 12, border: :thick, align: :left) do
            "
             ____                   _           ____    _                     
            |  _ \\   _ __   _   _  ( )  ___    |  _ \\  (_)  ____  ____   __ _ 
            | |_) | | '__| | | | | |/  / __|   | |_) | | | |_  / |_  /  / _` |
            |  __/  | |    | |_| |     \\__ \\   |  __/  | |  / /   / /  | (_| |
            |_|     |_|     \\__, |     |___/   |_|     |_| /___| /___|  \\__,_|
                            |___/                                                                                                                                               
                                                                                                                                                        
      "end
          print box
          puts "\n"
    end

    def start
        banner
        @user= prompt.ask("Welcome to Pry's Pizza! What is your name?\n")
        puts "Hey #{@user}! Nice to meet you! Would you like to see our Menu y/n?"
        answer=gets.strip
        if answer == "y"
            prompt.select("Choose an option.", %w(Pizzas Drinks Combo-Deals))
             
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
