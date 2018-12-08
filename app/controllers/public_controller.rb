class PublicController < ApplicationController
  # run the get_a_beverage method only before the order view
  # before_action :get_a_beverage, only: [:order]

  # Although a stub, this is needed for routing
  def welcome
  end

  # Assign the instance variable for a givem parameter associated with the beverage selection from user
  def get_beverage_type
    @selected_beverage = params[:beverage_selection]
  end

  
  # Assigns an instance variable given the order_name parameter from the user. If one is not provided, the first item in the talbe is used as default.
  #
  def beverage_pairing
    get_beverage_type
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

  # Takes in a user selecting via parameters from the browser
  # Default for @selectedDish is the first item in the Maindish table
  # Calls show_top_beer, show_top_wine, get_all_maindishes to make sure all is up to date
  def order
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

  private

  # Creates the instance variable for the maindish if found from maindish table
  def get_a_maindish(dish_name)
    @aMaindish = Maindish.find_by(name: dish_name)
  end

  def get_all_maindishes
    @allDieshes = Maindish.all

  end

  # Set instance variables to the pairings related to the maindish
  # returns the beer with the top weight for the given main dish
  def show_top_beer
    @beerPairings = @aMaindish.beerpairings
    @beerP = @aMaindish.beerpairings
    @topBeer = @beerP.first.beer_id
    @topBeerWeight = @beerP.first.weight

    @beerP.each do |what|
      if (what.weight > @topBeerWeight)
        @topBeerWeight = what.weight
        @topBeer = what.beer_id
      end
    end

  end

  # Set instance variables to the pairings related to the maindish
  # returns the beer with the top weight for the given main dish
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
