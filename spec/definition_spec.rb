require('rspec')
require('definition')

describe(Definition) do
  before() do
    @test_def = Definition.new("add meaning to the word")
  end

  describe('#define') do
    it('let you give it a definition') do
      @test_def
      expect(@test_def.define()).to(eq("add meaning to the word"))
    end
  end

  describe('.all') do
    it('will return an empty array at first') do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('save a definition into the storage array') do
      @test_def.save()
      expect(Definition.all()).to(eq([@test_def]))
    end
  end

  describe('.clear') do
    it('clear out the storage array')do
    @test_def.save()
    Definition.clear()
    expect(Definition.clear()).to(eq([]))
    end
  end

  describe('#id') do
    it('return the id asscoiated with a definition') do
      expect(@test_def.id()).to(eq(1))
    end
  end

  describe(".find") do
    it('will find the definition by finding the associated id') do
      @test_def.save()
      test_def2 = Definition.new("harmful beams of concentrated energy")
      test_def2.save()
      expect(Definition.find(@test_def.id())).to(eq(@test_def))
    end
  end

end
