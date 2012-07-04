def load_tweets( path )
  tweets = Tweet.new
  File.foreach(path) do |line|
    status, zombie = line.split(':')
    tweets[status] = zombie.strip
  end
  tweets
end
