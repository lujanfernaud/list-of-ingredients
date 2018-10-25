class DrinksController < ApiController
  def index
    @drinks = Drink.select("id, title").all

    render json: @drinks.to_json
  end
end
