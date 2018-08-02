require_relative("../db/sql_runner.rb")

class Casting
  attr_reader :id
  attr_accessor :fee, :movie_id, :star_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @fee = options["fee"].to_i
    @movie_id = options['movie_id'].to_i
    @star_id = options ['star_id'].to_i
  end

  def save()
    sql = "INSERT INTO stars(fee, movie_id, star_id) VALUES ($1, $2, $3) RETURNING id"
    values = [@fee, @movie_id, @star_id]
    casting = SqlRunner.run(sql, values)[0]
    @id = casting['id'].to_i
  end


  def self.delete_all()
    sql = "DELETE FROM castings"
    values = []
    SqlRunner.run(sql, values)
  end

end
