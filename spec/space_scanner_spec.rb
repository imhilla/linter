require_relative './lib/linter'
require_relative './lib/space_scanner'
describe SpaceScanner do
  let(:check) { Linter.new }
  let(:good_lines) { ['#head {', '  padding: 10px;', '}', "\n"] }
  let(:bad_lines) { ['#head{', "padding: 10px; \n", '}'] }
  let(:errors) { [] }
  describe '#trailing_space' do
    it 'should return no errors when there is no trailing white space' do
      expect(check.trailing_space(good_lines, errors)).to eql([])
    end
    it 'should raise an error when there is a trailing white space' do
      expect(check.trailing_space(bad_lines, errors)).to eql(['Trailing space found on line 2.'])
    end
  end
  describe '#indentation' do
    it 'should return an empty array, correct indentation detected' do
      expect(check.indentation(good_lines, errors)).not_to eql([])
    end
    it 'should throw an error, when incorrect indentation is detected' do
      expect(check.indentation(bad_lines, errors)).to eql(errors)
    end
  end
  describe '#space_before_bracket' do
    it 'should return an empty array when a line has correct indentation' do
      expect(check.space_before_bracket(good_lines, errors)).to eql([])
    end
    it 'should throw an error when there is no space before bracket' do
      expect(check.space_before_bracket(bad_lines, errors)).to eql(errors)
    end
  end
  describe '#last_line' do
    it 'should return nil since the last line is empty' do
      expect(check.last_line(good_lines, errors)).to eql(nil)
    end
  end
end
