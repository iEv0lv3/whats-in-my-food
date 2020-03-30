class UsdaService
  attr_reader :search

  def initialize(search)
    words = search.split
    @search = get_json("search?api_key=#{Figaro.env.usda_api_key}&ingredients=#{words[0]}%20#{words[1]}")
  end

  private

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)[:foods]
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/")
  end
end
