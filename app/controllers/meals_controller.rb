class MealsController < ApplicationController
  def index
    render :index, locals: {
      meals: Meal.includes(:products)
    }
  end

  def show
    render :show, locals: {
      meal: Meal.includes(:products, :diabetes_measurements).find(params[:id])
    }
  end
end
