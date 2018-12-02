class PublicController < ApplicationController
  # run the get_a_beverage method only before the order view
#before_action :get_a_beverage, only: [:order]
  def welcome
  end

  def get_beverage_type
    @selected_beverage = params[:beverage_selection]
  end

  def beverage_pairing
    get_beverage_type
    @topBeer
    @aMaindish = ''
    @selectedDish = params[:order_name]
    if (@selectedDish == nil)
      @selectedDish = Maindish.first.name
      get_a_maindish(@selectedDish)
    else
      get_a_maindish(@selectedDish)
    end
    show_top_beer
    show_top_wine
    get_all_maindishes
  end

  def order
    @topBeer
    @aMaindish = ''
    @selectedDish = params[:order_name]
    if (@selectedDish == nil)
      @selectedDish = Maindish.first.name
      get_a_maindish(@selectedDish)
    else
      get_a_maindish(@selectedDish)
    end
    show_top_beer
    show_top_wine
    get_all_maindishes
  end

  def messagewaiter
  end

  private


  def get_a_maindish(dish_name)
    @aMaindish = Maindish.find_by(name: dish_name)
  end

  def get_all_maindishes
    @allDieshes = Maindish.all

  end

  def show_top_beer
    @beerPairings = @aMaindish.beerpairings
    @beerP = @aMaindish.beerpairings
    @beerParingsArr = [@beerP.first]
    @topBeer = @beerP.first.beer_id
    @topBeerWeight = @beerP.first.weight

    @beerP.each do |what|
      if (what.weight > @topBeerWeight)
        @topBeerWeight = what.weight
        @topBeer = what.beer_id
      end
    end

  end

  def show_top_wine
    @winePairings = @aMaindish.winepairings
    @wineP = @aMaindish.winepairings
    @topWine = @wineP.first.wine_id
    @topWineWeight = @wineP.first.weight

    @wineP.each do |w|
      if (w.weight > @topWineWeight)
        @topWineWeight = w.weight
        @topWine = w.wine_id
      end
    end
  end

end
