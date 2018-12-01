class PublicController < ApplicationController
  # run the get_a_beverage method only before the order view
#before_action :get_a_beverage, only: [:order]
  def welcome
  end

  def order
    @aMaindish = ''
    @selectedDish = params[:order_name]
    if (@selectedDish == nil)
      @selectedDish = Maindish.first.name
      get_a_maindish(@selectedDish)
    else
      get_a_maindish(@selectedDish)
    end
    get_all_maindishes
    show_top_beer


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


  end

end
