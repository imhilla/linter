# lib/scanner.rb
module Scanner
  def missing_semicolon(lines, errors)
    lines.each_with_index do |line, index|
      next if line.include?('{') || line.include?('}') || line == '/n' || line.end_with?(',/n')

      errors << "Line doesnot end with ';' on line #{index + 1}." unless line.end_with?(';/n')
    end
    errors
  end
end
