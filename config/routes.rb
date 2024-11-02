Rails.application.routes.draw do
  # Homepage
  get("/", { :controller => "misc", :action => "homepage" })

  # Directors Path
  get("/directors/", { :controller => "director", :action => "index" })
  get("/directors/youngest/", { :controller => "director", :action => "youngest" })
  get("/directors/eldest/", { :controller => "director", :action => "eldest" })

  # Movies Path
  get("/movies/", { :controller => "movie", :action => "index" })

  # Actors Path
  get("/actors/", { :controller => "actor", :action => "index" })

end
