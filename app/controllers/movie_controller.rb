class MovieController < ApplicationController
  def index
    render({ :template => "movie_templates/index"})
  end

  def movie_page
    @movie_id = params[:movie_id]
    @specific_movie = Movie.where(:id => @movie_id).at(0)
    render({ :template => "movie_templates/movie_page"})
  end
end
