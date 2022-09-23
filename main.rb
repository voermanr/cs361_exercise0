# frozen_string_literal: true

def add(num1, num2)
  num1 + num2
end

def check_input(str)
  return true if
    str =~ /(((add)|(sub)|(div)|(mul)) \d* \d*)|quit/

  puts "usage: add|sub|mul|div v0 v1\nquit"
  false
end

str = ''

while str != 'quit'
  print 'SuperMathyBot> '
  str = gets
  next unless check_input(str)

  str = str.chop
  cmds_arr = str.split
  puts cmds_arr
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
