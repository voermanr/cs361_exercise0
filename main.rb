#######################################
# This program allows the user to     #
# add, subtract, multiply, or divide  #
# any two integer numbers. It will    #
# not however, allow the user to do   #
# anything outside the bounds of      #
# regular math. Sorry.                #
#                                     #
#   by Ross Voerman                   #
#######################################

# frozen_string_literal: true

# define our functions here
def add(num1, num2)
  puts num1.to_f + num2.to_f
end

def sub(num1, num2)
  puts num1.to_f - num2.to_f
end

def mul(num1, num2)
  puts num1.to_f * num2.to_f
end

def div(num1, num2)
  if num2.to_i != 0
    puts num1.to_f / num2.to_f
  else
    puts 'Can\'t divide by zero'
  end
end

def check_input(str)
  return true if
    str =~ /(((add)|(sub)|(div)|(mul)) \d* \d*)|quit/

  puts "usage: add|sub|mul|div v0 v1\nquit"
  false
end

# and our input variable
str = ''

# check user input and perform commands
while str != 'quit'
  print 'SuperMathyBot> '
  str = gets
  next unless check_input(str)

  str = str.chop
  cmds_arr = str.split

  case cmds_arr[0]
  when 'add'
    add(cmds_arr[1], cmds_arr[2])
  when 'sub'
    sub(cmds_arr[1], cmds_arr[2])
  when 'div'
    div(cmds_arr[1], cmds_arr[2])
  when 'mul'
    mul(cmds_arr[1], cmds_arr[2])
  else
    'what have you done'
  end
end
