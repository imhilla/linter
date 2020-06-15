require_relative '../lib/linter.rb'
#All methods for this module have been tested in the space_scanner_spec file
#The linter file extends the buffer module
module Buffer
  def check(file)
    errors = []
    lines = File.open(file).to_a

    if lines.size.positive?
      check = Linter.new
      check.last_line(lines, errors)
      check.indentation(lines, errors)
      check.trailing_space(lines, errors)
      check.space_before_bracket(lines, errors)
    end
    errors
  end
end
