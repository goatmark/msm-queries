class ActorController < ApplicationController
  def index
    render({ :template => "actor_templates/index"})
  end

  def actor_page
    @actor_id = params[:actor_id]
    @specific_actor = Actor.where(:id => @actor_id).at(0)
    render({ :template => "actor_templates/actor_page"})
  end
end
