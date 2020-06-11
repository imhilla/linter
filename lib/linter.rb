require_relative '../lib/space_check.rb'
require_relative '../lib/scanner.rb'

class Linter
  include SpaceScanner
  include Scanner
end
