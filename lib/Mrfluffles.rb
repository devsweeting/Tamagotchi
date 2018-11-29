class Mrfluffles
  attr_accessor :name, :hunger_level, :sass_level, :judgement_level, :energy_level, :alive
  attr_reader :id

  @@cats = []

  def initialize(name)
    @name = name
    @hunger_level = 9
    @sass_level = 8
    @judgement_level = 9
    @energy_level = 18
    @alive = true
    @id = @@cats.length + 1
  end

  def pass_time
    @hunger_level = @hunger_level + 3
    @energy_level = @energy_level - 2
  end

  def feed
    @hunger_level = @hunger_level - 1
  end

  def pet
    @sass_level = @sass_level + 2
    @judgement_level = @judgement_level - 5
  end

  def smack
    @judgement_level = @judgement_level + 6
  end

  def activity(activity_choice)
    activities = {"catnip" => -2, "laserpointer" => -4, "nap" => 3}
    @energy_level = @energy_level + activities[activity_choice]
    @hunger_level = @hunger_level + 1
    @judgement_level = @judgement_level - 3
    if activity_choice == "nap"
      @sass_level = @sass_level + 2
      @energy_level = @energy_level + 8
    elsif activity_choice == "laserpointer"
      @hunger_level = @hunger_level + 3
      @sass_level = @sass_level - 3
    elsif activity_choice == "catnip"
      @hunger_level = @hunger_level + 1
      @judgement_level = @judgement_level - 12
      @sass_level = @sass_level + 5
    end

  end

  def check_alive
    if @hunger_level > 7
      @judgement_level = @judgement_level + 3
      @energy_level = @energy_level - 3
    end

    if (@hunger_level > 20)
      return @alive == false
    else
      return @alive
    end
  end

  def save
    @@cats.push(self)
  end

  def self.all()
    @@cats
  end

  def self.find(id)
    item_id = id.to_i()
    @@cats.each do |item|
      if item.id == item_id
        return item
      end
    end
  end

end

# || (@sass_level > 10) || (@judgement_level > 10) || (@energy_level > 10)

# cat = Mrfluffles.new('naynay')
