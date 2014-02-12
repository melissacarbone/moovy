require 'spec_helper'

describe Moovy::Movie do
  it 'allows me to search for movies playing in local theaters' do
    movies = Moovy::Movie.search('11102')
    expect(movies).to_not eql([])
    expect(movies.first).to be_kind_of(Moovy::Movie)

    #expect(movies.first.title).to include('Frozen')
  end
end
