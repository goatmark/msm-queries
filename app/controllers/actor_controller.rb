class ActorController < ApplicationController
  def index
    render({ :template => "actor_templates/index"})
  end
end
