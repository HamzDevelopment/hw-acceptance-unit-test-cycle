module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end

  def movies_with_same_director(movie)
    movies_with_same_director = Movie.where(director: movie.director)
    movies_with_same_director.reject { |m| m.id == movie.id }
  end
end
