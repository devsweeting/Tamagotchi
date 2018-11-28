class Mrfluffles
  attr_accessor :name, :hunger_level, :sass_level, :judgment_level, :energy_level, :alive,

  def intialize (name)
    @name = name
    @hunger_level = 0
    @sass_level = 5
    @judgment_level = 5
    @energy_level = 9
    @alive = true
    end

  def feed
    @hunger_level = @hunger_level - 1
  end

  def pet
    @sass_level = @sass_level - 2
  end

  def smack
    @judgment_level = @judgment_level - 5
  end

  def activity(activity_choice)
    activities = {"catnip" => -5, "laserpointer" => -4, "nap" => 3}
    @energy_level = @energy_level + activities[activity_choice]
  end

  def check_alive
    if (@hunger_level > 10) || (@sass_level > 10) || (@judgement_level > 10) || (@energy_level > 10)
      @alive == false
    end
end
