class PublicController < ApplicationController
  # run the get_a_beverage method only before the order view
before_action :get_a_beverage, only: [:order]
  def welcome
  end

  def order
    # @aBeer = Beer.find_by(name: 'Stone').name
  end

  def messagewaiter
  end

  private

  def get_a_beverage
    @aBeer = Beer.find_by(name: 'Stone').name
  end

  def get_a_maindish
    @aMaindish = Maindish.find(name: 'Turkey').name
  end

end
