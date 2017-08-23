#!/usr/bin/ruby
puts "\nTo run the program, we need to install the listed tools :"
puts "\n\t sl , gem , cowsay , bsdgames , colorize, mplayer\n"
puts ""
system "sudo apt update ; sudo apt install gem sl cowsay bsdgames mplayer"
system "sudo gem install colorize"
