class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
  end

  def show
    # Your code goes here
    # Use the information after the slash in the URL to look up the director with the corresponding ID number
    # Store the director in the @director instance variable so the view can format it

    # @director = ???

      director_id = params[:id]
        director = Director.find(director_id)
          @director_name_ind = director["name"]
          @director_bio_ind = director["bio"]
          @director_img_ind = director["image_url"]
          @director_dob_ind = director["dob"]

  end
end
