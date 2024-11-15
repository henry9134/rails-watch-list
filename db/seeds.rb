require 'open-uri'
Movie.destroy_all

url = 'http://tmdb.lewagon.com/movie/top_rated'
response = JSON.parse(URI.open(url).read)

response['results'].each do |movie_hash|
  puts
  p movie_hash

  Movie.create!(
    poster_url: "https://image.tmdb.org/t/p/w500" + movie_hash['poster_path'],
    rating: movie['vote_average'],
    title: movie_hash['title'],
    overview: movie_hash['overview']
  )
end
