class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
  end

  def show
    # Your code goes here
    # Use the information after the slash in the URL to look up the actor with the corresponding ID number
    # Store the actor in the @actor instance variable so the view can format it

    # @actor = ???

    actor_id = params[:id]
      actor = Actor.find(actor_id)
      @actor_name_ind = actor["name"]
      @actor_bio_ind = actor["bio"]
      @actor_img_ind = actor["image_url"]
      @actor_dob_ind = actor["dob"]

  end
end
