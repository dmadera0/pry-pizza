class Cli 
    attr_accessor :user
    def initialize user=nil
        @user=nil
    end

    def start
        puts "Welcome to Pry's Pizza! What is your name?"
        @user=gets.strip
        puts "Hey #{@user}! Nice to meet you!"
        answer=gets.strip

        menu_options = ["Show me pizzas", "Show me drinks", "Show me combo discounts"]
        menu_selection = prompt.select("Please choose an option:", menu_options)
    end

end
