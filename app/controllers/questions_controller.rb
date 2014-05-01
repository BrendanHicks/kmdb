class QuestionsController < ApplicationController
  def question_1
    # How many movies are in the database?

    # Your Ruby goes here.

    @number_of_movies = Movie.count
  end

  def question_2
    # In what year was the oldest movie on the list released?

    # Your Ruby goes here.



    @year_of_oldest_movie = Movie.order(year: :asc).first["year"]


  end

  def question_3
    # How many movies does the director of the first movie have on the list?

    # Your Ruby goes here.

    first_director_id = Director.first["id"]

      @director_name = Director.first[:name]

    @number_of_movies_directed_by_first_movie_director = Movie.where({:director_id => first_director_id}).count


  end

  def question_4
    # What is the most number of movies any single director has on the list?

    # Your Ruby goes here.
    # You'll probably have to use both ActiveRecord query methods as well as some plain old Ruby logic.

    top_director_count = 0
      d_table = Director.all

        d_table.each do |director|

          dir_id = director.id

          m = Movie.where({:director_id => dir_id}).count

            if m > top_director_count

              top_director_count = m

            end

        end

    @most_number_of_movies_by_a_single_director = top_director_count

  end

  def question_5
    # What is the most recent movie on the list that the first actor appeared in?

    # Your Ruby goes here.
    # You'll probably have to use both ActiveRecord query methods as well as some plain old Ruby logic.

    first_actor_id = Actor.first.id
    first_actor_total_movie_array = Array.new

    role_array = Role.where({:actor_id => first_actor_id})

    role_array.each do |role|
      movie = Movie.find(role.movie_id)
      first_actor_total_movie_array.push movie
    end

    @most_recent_movie_for_first_actor = first_actor_total_movie_array.sort { |a, b| b.year <=> a.year}.first.title








  end
end
