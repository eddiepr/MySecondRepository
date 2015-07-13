# Initial version of our spec, before stubs.
 
require_relative("../lib/profanity_filter.rb")
require_relative("../lib/imdb_movie_stub.rb")
 
RSpec.describe("Profanity filter") do
  let(:profane_movie) { Imdb::Movie.new("tt0417148") }
  # "All these mothafucking snakes on this mothafucking plane."
  let(:clean_movie) { Imdb::Movie.new("tt0936501") }
  # "I will find you and I will kill."
 
  let(:filter) { ProfanityFilter.new }
 
  it("replaces 'fuck' for 'f**k'") do
    filtered = filter.remove_fuck(profane_movie.plot)
    correct = "All these mothaf**king snakes on this mothaf**king plane."
    expect(filtered).to eq(correct)
  end
 
  it("doesn't replace any words if no profanity") do
    filtered = filter.remove_fuck(clean_movie.plot)
    expect(filtered).to eq(clean_movie.plot)
  end
end