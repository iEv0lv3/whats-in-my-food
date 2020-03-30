require './app/models/food'

class SearchFacade
  def initialize(response)
    @data = response
  end

  def total_foods
    @data.size
  end

  def foods
    ten = @data[0..9]
    ten.map do |food|
      Food.new(food)
    end
  end
end
