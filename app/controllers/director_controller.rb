class DirectorController < ApplicationController
  def index
    render({ :template => "director_templates/index"})
  end

  def eldest
    eldest_director = Director.where.not({:dob => nil}).order({ :dob => :asc }).at(0)

    # Director Name
    @eldest_director_name = eldest_director.name
    dob_string = eldest_director.dob
    @eldest_director_dob = dob_string.strftime("%B %m, %Y")
    @eldest_director_id = eldest_director.id
    
    render({ :template => "director_templates/eldest"})
  end

  def youngest
    youngest_director = Director.where.not({:dob => nil}).order({ :dob => :desc }).at(0)

    # Director Name
    @youngest_director_name = youngest_director.name
    dob_string = youngest_director.dob
    @youngest_director_dob = dob_string.strftime("%B %m, %Y")
    @youngest_director_id = youngest_director.id

    render({ :template => "director_templates/youngest"})
  end

  def director_page
    @director_id = params[:director_id]
    @specific_director = Director.where(:id => @director_id).at(0)
    
    render({ :template => "director_templates/director_page"})
  end
end
