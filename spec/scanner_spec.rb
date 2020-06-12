# spec/scanner_spec.rb
require './lib/scanner'
require './lib/linter'

describe Scanner do
  let(:check) { Linter.new }
  let(:line1) { ["margin: 20px\n"] }
  let(:line2) { ["padding: 10px;\n"] }
  let(:errors) { [] }

  describe '#missing_semicolon' do
    it 'should return an error when there is missing semicolon at the end of the line' do
      expect(check.missing_semicolon(line1, errors)).to eql(["Line doesnot end with ';' on line 1."])
    end

    it 'returns an empty error when there is a semicolon at the end ' do
      expect(check.missing_semicolon(line2, errors)).to eql(errors)
    end
  end
end
