require_relative 'space_scanner.rb'
require_relative 'buffer.rb'

class Linter
  include SpaceScanner
  extend Buffer
end
