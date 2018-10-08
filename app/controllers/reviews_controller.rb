class ReviewsController < ApplicationController
  def create
    @film = Film.find_by(id: params[:id])
    @reviews = @film.reviews.new(permitted_review_params)
    respond_to do |format|
      if @reviews.save
        format.js{redirect_to @film}
      else
        format.js
        @reviews.errors.any?
        @reviews.errors.each do |key, value|
        end
      end
    end
    # if @film.reviews.create!(permitted_review_params)
    #   redirect_to @film
    # else
    #   render 'new'
    # end
  end

  private
  def permitted_review_params
    params.require(:review).permit(:full_name, :email, :message);
  end
end
