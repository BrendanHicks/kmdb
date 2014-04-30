class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
  end

  def show
    # Your code goes here
    # Use the information after the slash in the URL to look up the movie with the corresponding ID number
    # Store the movie in the @movie instance variable so the view can format it

    # @movie = ???


     movie_id = params[:id]

        @movie_hash = Movie.find(movie_id)
            @movie_title_individual = @movie_hash["title"]
            @movie_year_individual = @movie_hash["year"]
            @movie_duration_individual = @movie_hash["duration"]
            @movie_description_individual = @movie_hash["description"]
            @movie_image_individual = @movie_hash["image_url"]



              dir_id = @movie_hash["director_id"]
                director_info = Director.find(dir_id)

            @movie_director_individual = director_info["name"]



  end
end
