require_relative 'space_scanner.rb'
require_relative 'buffer.rb'

class Linter < Buffer
  include SpaceScanner
end
