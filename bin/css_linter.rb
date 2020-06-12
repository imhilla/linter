#!/usr/bin/env ruby
require_relative '../lib/linter.rb'
require_relative '../lib/scanner.rb'
require 'colorize'

puts '---------------------------------'
puts '| Welcome to CSS Linter! |'
puts '---------------------------------'

puts ''
puts 'Scanning file...'
puts ''
file = ARGV[0]
puts 'Scanning file for possible errors...'
puts ''

errors = Linter.check(file)

if errors.size.positive?
  puts "Success 1 file tested. Scan completed with the following #{errors.size} errors: "
  errors.each { |error| puts '  Error: '.red + "#{error}\n" }
else
  puts '1 file tested. All checks completed with no errors'.green
end