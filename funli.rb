#!/usr/bin/ruby
system "sl ; clear"
require 'colorize'
print "Whats Your name ? "
name = gets.chomp
system "cowsay hello #{name}"
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
     3: other ".yellow
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
       puts "GoodBye:)"
     else
       puts "\nError!".red
   end
end
Application.new
end