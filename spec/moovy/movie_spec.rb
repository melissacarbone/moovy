require 'spec_helper'

describe Moovy::Movie do
  it 'allows me to search for a movie title' do
    movies = Moovy::Movie.search('Frozen')
    expect(movies).to_not eql([])
    expect(movies.first).to be_kind_of(Moovy::Movie)

    expect(movies.first.title).to include('Frozen')
  end
end
