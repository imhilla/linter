require './lib/linter'
require './lib/space_scanner'
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
end
