class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @array = ["https://static.pexels.com/photos/32318/pexels-photo.jpg", "https://static.pexels.com/photos/8296/pexels-photo-8296.jpg", "https://static.pexels.com/photos/56837/swimmers-swimming-race-competition-56837.jpeg", "https://www.pexels.com/photo/sunset-people-sun-men-1238/", "https://static.pexels.com/photos/8983/pexels-photo.jpeg"]
  end

  def dashboard
    @favorite_sport = FavoriteSport.new
  end

end
