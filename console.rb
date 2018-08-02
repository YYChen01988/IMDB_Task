require_relative('models/star.rb')
require_relative('models/movie.rb')
require_relative('models/casting.rb')

require( 'pry-byebug')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

star1 = Star.new({'first_name' => 'Johnny', 'last_name' => 'Deep'})
star1.save()
star2 = Star.new({'first_name' => 'Tom', 'last_name' => 'Hank'})
star2.save()

movie1 = Movie.new({'title' => 'Dark Shadows', 'genre' => 'Comedy'})
movie1.save()
movie2 = Movie.new({'title' => 'Forrest Gump', 'genre' => 'Drama'})
movie2.save()

casting1 = Casting.new({
  'fee' => 500,
  'star_id' => star1.id,
  'movie_id' => movie1.id
  })
casting1.save()

casting2 = Casting.new({
  'fee' => 600,
  'star_id' => star2.id, 
  'movie_id' => movie2.id
  })
casting2.save()

binding.pry
nil
