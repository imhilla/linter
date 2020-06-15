require_relative '../lib/linter'
require_relative '../lib/buffer'

describe Buffer do
  let(:check) { Linter.new }
  let(:lines) { File.open(file).to_a }
  let(:errors) { [] }
  describe '#self.check(file)' do
    it ''do
    end
  end
end