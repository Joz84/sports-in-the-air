class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @favorite_sport = FavoriteSport.new
  end

end
