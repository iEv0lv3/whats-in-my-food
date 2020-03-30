class SearchController < ApplicationController
  def new
    service = UsdaService.new(params[:q])
    @response = SearchFacade.new(service.search)
  end
end
