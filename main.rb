# frozen_string_literal: true

def add(num1, num2)
  num1 + num2
end

def check_input(str)
  return true if str =~ /\w{3} \d* \d*$/ || str =~ /quit$/

  puts "usage: add|sub|mul|div v0 v1\nquit"
  false
end

str = ''

while str != 'quit'
  puts 'type your stuff'
  str = gets
  next unless check_input(str)

  str = str.chop
  cmds_arr = str.split
  puts cmds_arr
end
