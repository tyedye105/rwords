require('rspec')
require('definition')

describe(Definition) do
  describe('#define') do
    it('let you give it a definition') do
      test_def = Definition.new("add meaning to the word")
      expect(test_def.define()).to(eq("add meaning to the word"))
    end
  end
end
