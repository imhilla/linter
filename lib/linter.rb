require_relative 'space_scanner.rb'
require_relative 'buffer.rb'
require_relative 'bracket_scanner.rb'

class Linter
  include SpaceScanner
  include BracketScanner
  extend Buffer
end
