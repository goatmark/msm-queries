class DirectorController < ApplicationController
  def index
    render({ :template => "director_templates/index"})
  end

  def eldest
    
    render({ :template => "director_templates/eldest"})
  end

  def youngest
    render({ :template => "director_templates/youngest"})
  end
end
