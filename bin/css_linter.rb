#!/usr/bin/env ruby
require_relative '../lib/linter'
require_relative '../lib/buffer'

puts '---------------------------------'
puts '| Welcome to CSS Linter! |'
puts '---------------------------------'

puts ''
puts 'Scanning file...'
puts ''
file = ARGV[0]

puts 'WARNING'

puts 'Scanning file for possible errors...'

puts ''



puts ' '

puts 'Please input the correct file path i.e ruby ./bin/css_linter.rb lib/good.css'

puts ' '

errors = Linter.check(file)

if errors.size.positive?
  puts "Success 1 file tested. Scan completed with the following #{errors.size} errors: "
  errors.each { |error| puts '  Error: ' + "#{error}\n" }
else
  puts '1 file tested. All checks completed with no errors'
end
