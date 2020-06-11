module SpaceScanner
  # rubocop:disable Metrics/CyclomaticComplexity
  def trailing_space(lines, errors)
    lines.each_with_index do |line, index|
      errors << "Trailing space found on line #{index + 1}." if line.end_with?('; /n')
    end
    errors
  end

  def indentation(_line, errors)
    lines.each_with_index do |line, index|
      next if line.start_with?('@') || line == '/n' || line.end_with?('/n')
      next if ['{', '}'].any { |bracket| line.include? bracket }

      spaces = line[/\A */].size
      if spaces < 2 || spaces > 2
        errors << "Identation of 2 spaces expected
        Found #{spaces} spaces instead on line #{index + 1}."
      end
    end
    errors
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end
