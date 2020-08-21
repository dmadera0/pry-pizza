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
            @user= prompt.ask("Welcome to Pry's Pizza! What is your name?\n")
            puts "Hey #{@user}! Nice to meet you! Would you like to see our Menu y/n?"
            answer=gets.strip
            menu(answer)
        end
        
        def menu(answer)
            system "clear"
            sleep(0.5)
        if answer == "y"
           
            menu_options = ["Pizza List", "Drink List", "Combo Items", "Order"]
           menu_selection = prompt.select("Please Choose an Option:", menu_options,)
             
           case menu_selection
             when "Pizza List"
                sleep(0.1)
                Pizza.all.map do |pizza|
                puts "#{pizza.name} - $#{pizza.price}"
                end
                answer2 =prompt.ask("Would you like to see more Items on the menu: y/n?")
                if answer2 == "y"
                menu(answer2)
                else
                    start
                end
             when "Drink List"
                sleep(0.1)
                Drink.all.map do |drink|
                    puts "#{drink.name} - $#{drink.price}"
                end
                answer2 =prompt.ask("Would you like to see more Items on the menu: y/n?")
                if answer2 == "y"
                menu(answer2)
                else
                    start
                end
            when "Combo Items"
                sleep(0.1)
                Meal.all.map do |meal|
                    puts "#{meal.name} - $#{meal.price}"
                end
                answer2 =prompt.ask("Would you like to see more Items on the menu: y/n?")
                if answer2 == "y"
                menu(answer2)
                else
                    start
                end
            when "Order"
                sleep(0.1)
                order_food
                puts "Great Choice!!!"
                @bar
            end
            answer3=prompt.ask("would you like to order again?: y/n")
            if answer3 == "y"
                menu(answer3)
            else
                answer3 =="n"
                puts "Enjoy your meal!!!"
                sleep(0.2)
                goodby_banner
                    start
            end

        end

    end

    def goodby_banner
        box = TTY::Box.frame(width: 100, height: 12, border: :thick, align: :left) do
            "
               ____                       _   _                      _ 
             / ___|   ___     ___     __| | | |__    _   _    ___  | |
             | |  _   / _ \\   / _ \\   / _` | | '_ \\  | | | |  / _ \\ | |
             | |_| | | (_) | | (_) | | (_| | | |_) | | |_| | |  __/ |_|
             \\____|  \\___/   \\___/   \\__,_| |_.__/   \\__, |  \\___| (_)
                                                     |___/ 
                                                                                                                                                                           
            
            "end
            print box
            puts "\n"
    end

    
    def order_food
        full_menu =["Margarita Pizza", "Hawaiian Pizza", "Meat Lovers Pizza", "Veggie Lovers Pizza", "Popeye Pizza", 
            "Olive You Pizza", "Hot Ass Pizza", "Buffalo Chicken Pizza","Gucci Pizza","Peppa Pig", "Corona", 
            "Budwiser", "Michelobe", "Budlight", "Margintina Combo", "College Kids Combo","Flyin", "Gentle Giant"]
        prompt_order = prompt.multi_select("What would you like to order?", full_menu)
    end

end
