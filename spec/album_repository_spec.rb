require 'album_repository'

RSpec.describe AlbumRepository do

  def reset_albums_table
    seed_sql = File.read('spec/seeds_albums.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library_test' })
    connection.exec(seed_sql)
  end


  before(:each) do 
    reset_albums_table
  end

  it 'returns two albums' do
    repo = AlbumRepository.new
    album = repo.all
    album.length # =>  1

    expect(album[0].id).to eq('1') # =>  1
    expect(album[0].title).to eq("Certified Lover Boy") # =>  'Drake'
    expect(album[0].release_year).to eq("2021") # =>  '2021'
    expect(album[0].artist_id).to eq("5") # =>  '5'
    
  end
end  
