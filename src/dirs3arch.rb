#!/usr/bin/ruby

###################################################################
# This script makes the download, compilation and installation of #
# dirs3arch on linux distributions.			          #
# It only automates the things.			                  #
#							          #
# Maximoz Sec <maximozsec@outlook.com.br>	                  #
# 15/02/2015					                  #
###################################################################	

Dir.chdir("src/")
system "sudo ./generator.py dirs3arch python3 dirs3arch.py"

require 'colorize'
load 'lib/spinner.rb'

system "clear"
print "[" + " ~~ ".red + "] Installing dirs3arch..."
show_wait_spinner{
  sleep rand(4)+2 # Simulate a task taking an unknown amount of time
}

load 'lib/banner.rb'
prog("dirs3arch")
