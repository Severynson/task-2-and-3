class Auto
  attr_accessor :type_engine , :veight , :fuel
  def initialize( type_engine = "disel" , veight = 3000 , fuel = 5 )
    @type_engine = type_engine
    @veight = veight
    @fuel = fuel
  end
  def engine (type_engine)
    # puts "Type of engine #{@type_engine}"
    if type_engine == "disel"
      puts "type engene disel"
    else type_engine == "bensine"
    puts "type engene bensine"
    end
    # @type_engine =type_engine
  end
  def veight (veight)
    puts "car veight: #{veight}"
    # if veight > 5000
    #   raise "its not real veight"
  end
  def fuel_type (fuel)
    puts "fuel type is : #{fuel} "
  end
  def description (type_engine_val ,veight_val ,fuel_type_val)
    self.engine(type_engine_val)
    self.veight(veight_val)
    self.fuel_type(fuel_type_val)

    # print engine (type_engine_val), veight(veight_val) , fuel_type(fuel_type_val)
    if veight_val > 5000
      raise "its not real veight"
    end
  end
end
class Mitsubishi < Auto
  attr_reader :gen, :color
  def initialize( color = nil , gen = nil )
    @color = color
    @gen = gen
    super(type_engine = "bensine" , veight = 3000 , fuel = 15)
  end
  def color2
    puts "color car #{@color}"
  end
  def generation
    puts "Car generation: #{@gen}"
  end
  def description
    super ("type_engine_val") ,(666) ,("fuel_type_val")
    print color2, generation
  end

end
oop= Mitsubishi.new
print oop.description



#("disel", "5456", "54841")