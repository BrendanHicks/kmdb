class RolesController < ApplicationController
  def index
    @list_of_roles = Role.all


  end

  def show
    # Your code goes here
    # Use the information after the slash in the URL to look up the role with the corresponding ID number
    # Store the role in the @role instance variable so the view can format it

    # @role = ???


      role_id = params[:id]
          @role = Role.find(role_id)
                @role_character_ind = @role["character_name"]


                movie_id = @role["movie_id"]
                  movie = Movie.find(movie_id)
                @role_movie_ind = movie["title"]


                actor_id = @role["actor_id"]
                  actor = Actor.find(actor_id)
                  @role_actor_ind = actor["name"]
                  @role_url_ind = actor["image_url"]



  end
end
