class FavoriteSportsController < ApplicationController
  def index
    @favorite_sports = FavoriteSport.all
    @favorite_sport = FavoriteSport.new
  end

  def create
    @favorite_sport = FavoriteSport.new(favorite_sport_params)
    @favorite_sport.save
    redirect_to favorite_sports_path
  end

  def destroy
    @favorite_sport = FavoriteSport.find(params[:id])
    @favorite_sport.delete
    redirect_to favorite_sports_path
  end

  def update
  end

    private

    def favorite_sport_params
      params.require(:favorite_sport).permit(:sport_id, :level)
    end
end