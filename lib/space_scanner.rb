module SpaceScanner
  def trailing_space(lines, errors)
    lines.each_with_index do |line, index|
      errors << "Trailing space found on line #{index + 1}." if line.end_with?('; /n')
    end
    errors
  end
  def indentation(line, errors)
    lines.each_with_index do |line, index|
    next if line.start_with?('@') || line == "/n" || line.end_with?("/n")
    next if ['{', '}'].any { |bracket| line.include? bracket}

    spaces = line[/\A */].size
  end
end
