#!/usr/bin/ruby
system "sl ; reset"
require 'colorize'
print "Whats Your name ? "
name = gets.chomp
system "cowsay hello #{name}"
loop do
class Application
def initialize
  mainMenu
end

def navigateTo(what)
  what.new(v).display
  mainMenu
end

def mainMenu
  puts "
     1: movie
     2: game
     3: other
     4: exit".yellow
  print "\n==> "
   case gets.strip
     when "1"
       puts "
	    one: Star Wars movie
	    two: Run your movie"
       print "Which one do you like? "
       case gets.strip
         when "one"
           system "telnet towel.blinkenlights.nl"
         when "two"
           print "Enter the movie address ==> "
           movie = gets
           system "mplayer -vo caca #{movie}"
         else
           puts "Error!".red
       end
     when "2"
	puts "
	    a: worm
	    b: snake
            c: tetris"
        print "\n==> "
	case gets.strip
	  when "a"
	     system "worm"
    when "b"
      system "snake"
    when "c"
      system "tetris-bsd"
    else
      puts "Error!".red
	end
     when "3"

       puts "
	    4: weather
	    5: Internet speed test
            6: Banner printing
            7: calculator"
       print "==> "
       case gets.strip
         when "4"
           print "inter Your city ==> "
           city = gets
           system "curl http://wttr.in/#{city}"
         when "5"
           system "speedtest-cli"
         when "6"
           print "Enter banner content ==> "
           content = gets
           system "banner #{content}"
         when "7"
           def get_int_values(n)
             n.times.map.with_index { |n|
               print "#{ 1 + n }: "
               gets.chomp.to_i
             }
           end
           print "Would you like to [add], [multiply], or [subtract]? "
           response = gets.chomp
           print "\nHow many values? "
           num_of_values = gets.to_i
           case response.downcase
             when "add"
               puts "\nWhich numbers would you like to add?\n "
               operator = :+
             when "subtract"
               puts "\nWhich numbers would you like to subtract?\n "
               operator = :-
             when "multiply"
               puts "\nWhich numbers would you like to multiply?\n "
               operator = :*
             else
               puts "error!".red
           end
           answer = get_int_values(num_of_values).inject(operator)
           puts "answer == #{ answer }"
         else
           puts "Error!".red
       end
     when "4"
       system "figlet Good Bye !"
       exit!
     else
       puts "\nError!".red
   end
end
Application.new
end
end
