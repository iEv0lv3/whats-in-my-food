class Food
  attr_reader :description, :upc, :owner, :ingredients

  def initialize(food_hash = {})
    @description = food_hash[:description]
    @upc = food_hash[:gtinUpc]
    @owner = food_hash[:brandOwner]
    @ingredients = food_hash[:ingredients]
  end
end
