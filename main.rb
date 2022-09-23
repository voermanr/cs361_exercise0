# frozen_string_literal: true

def add(num1, num2)
  num1 + num2
end

str = ''

while str != 'quit'
  puts 'type your stuff'
  str = gets
  str = str.chop
  cmd = str[0..2]
  puts cmd
  puts "str: #{str}"
end
