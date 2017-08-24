#!/usr/bin/ruby
puts "\nTo run the program, we need to install the listed tools :"
puts "\n\t sl , gem , cowsay , bsdgames , colorize, mplayer, curl, banner, figlet\n"
puts "\nPlease Waiting .... (You have 5 seconds to cancel the program)\n"
system "sleep 8"
puts "\nOky LetsGo!"
puts ""
system "sudo apt update ; sudo apt install gem sl cowsay bsdgames mplayer curl sysvbanner figlet"
system "sudo gem install colorize"
