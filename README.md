# Pry's Pizza
> Your favorite virtual pizza shop!
## Table of contents
* [General Info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)
* [Inspiration](#inspiration)
* [Contact](#contact)
## General Info
Pry's Pizza is a CLI application that allows users to enter their name and take a dive into our pizza, drink and combo deal menus, as well as create their own orders! 
Make all your pizza dreams come true at Pry's Pizza!!!
## Technologies
* Ruby - version 2.6.1
* ActiveRecord - version 6.0
* Rake - version 13.0
* Sinatra-activerecord - version 2.0
* SQLite3 - version 1.4
## Setup
To run this project, 
1. In the root directory, enter the command bundle install.
2. In the root directory enter the code below.
```ruby
ruby runner.rb
```
## Code Examples
```ruby
def start
        @user= prompt.ask("Welcome to Pry's Pizza! What is your name?\n")
        puts "Hey #{@user}! Nice to meet you! Would you like to see our Menu y/n?"
        answer=gets.strip
        menu(answer)
    end
```
```ruby
case menu_selection
             when "Pizza List"
                Pizza.all.map do |pizza|
                puts "#{pizza.name} - $#{pizza.price}"
                end
                answer2 =prompt.ask("Would you like to see more Items on the menu: y/n?")
                if answer2 == "y"
                menu(answer2)
                else
                    start
                end
```
## Features
* Browse menus by category
* Return to previous menus
* See pizza prices
* Create your own pizza order
* Engage in an interactive experience by entering your name

To-do list:
* Include option to exand info about pizza - toppings
* Add functionality to return combo meal details (what pizza & what drink is included)
* Allow the creation of orders to include drinks
* Integrate additional graphics and music to app
## Status
Project is: fully functional, though we would have liked to add additional features.
## Inspiration
The inspiration for Pry's Pizza came from an example discussed with Ahmed. Because we both love pizza, we though creating an app where you could integrate pizzas and drinks into combo meals would be an amazing use of 3 models and a join table!
## Contact
Created by [D'Arcy Draper] (https://www.linkedin.com/in/darcydraper3/) and 
[Daniel Madera](https://www.linkedin.com/in/daniel-madera-925b4987/)