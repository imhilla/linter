module SpaceScanner
  def trailing_space(lines, errors)
    lines.each_with_index do |line, index|
      errors << "Trailing space found on line #{index + 1}." if line.end_with?('; /n')
    end
    errors
  end
end
