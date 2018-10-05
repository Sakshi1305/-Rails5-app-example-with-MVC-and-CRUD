class ReviewsController < ApplicationController
  def create
    @film = Film.find_by(id: params[:id])
    if @film.reviews.create!(permitted_review_params)
      redirect_to @film
    else
      render 'new'
    end
  end

  private
  def permitted_review_params
    params.require(:review).permit(:full_name, :email, :message);
  end
end
