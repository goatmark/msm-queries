Rails.application.routes.draw do
  # Homepage
  get("/", { :controller => "misc", :action => "homepage" })

  # Directors Path
  get("/directors/", { :controller => "director", :action => "index" })
  get("/directors/youngest/", { :controller => "director", :action => "youngest" })
  get("/directors/eldest/", { :controller => "director", :action => "eldest" })
  get("/directors/:director_id", { :controller => "director", :action => "director_page"})

  # Movies Path
  get("/movies/", { :controller => "movie", :action => "index" })
  get("/movies/:movie_id", { :controller => "movie", :action => "movie_page"})

  # Actors Path
  get("/actors/", { :controller => "actor", :action => "index" })
  get("/actors/:actor_id", { :controller => "actor", :action => "actor_page"})

end
