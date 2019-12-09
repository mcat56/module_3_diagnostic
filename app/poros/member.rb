class Member 
  attr_reader :name, :role, :house, :patronus, :order_of_phoenix

  def initialize(info)
    @name = info['name']
    @role = info['role']
    @house = info['house']
    @patronus = info['patronus']
    @order_of_phoenix = info['orderOfThePhoenix']
  end

end
