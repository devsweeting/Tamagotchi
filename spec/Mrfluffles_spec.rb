require ('rspec')
require ('pry')
require ('Mrfluffles')


describe('Mrfluffles') do

  describe('#feed') do
    it('feeds Mrfluffles') do
      cat = Mrfluffles.new('Gigi')
      expect(cat.feed()).to(eq(2))
    end
  end

  describe('#pet') do
    it('pet Mrfluffles') do
      cat = Mrfluffles.new('Gigi')
      expect(cat.pet()).to(eq(3))
    end
  end

  describe('#smack') do
    it('smacks Mrfluffles') do
      cat = Mrfluffles.new('Gigi')
      expect(cat.smack()).to(eq(0))
    end
  end

  describe('#activity') do
    it('activity for Mrfluffles') do
      cat = Mrfluffles.new('Gigi')
      expect(cat.activity("catnip")).to(eq(4))
    end
  end

  describe('#check_alive') do
    it('check if Mrfluffles is alive') do
      cat = Mrfluffles.new('Gigi')
      expect(cat.check_alive()).to(eq(true))
    end
  end

  describe('#check_alive') do
    it('check if Mrfluffles is alive') do
      cat = Mrfluffles.new('Gigi')
      cat.hunger_level = 11
      expect(cat.check_alive()).to(eq(false))
    end
  end
end
