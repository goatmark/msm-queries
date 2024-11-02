class MovieController < ApplicationController
  def index
    render({ :template => "movie_templates/index"})
  end
end
