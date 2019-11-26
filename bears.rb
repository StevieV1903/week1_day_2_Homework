class Bear

attr_reader :name, :type

def initialize(name, type)
  @name = name
  @type = type
  @bear_stomach = []
end

def fish_amount()
    return @bear_stomach.length
  end

  def eat_fish(fish)
    @bear_stomach.push(fish)

  end


end
