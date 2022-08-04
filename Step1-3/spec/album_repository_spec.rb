require 'album_repository'
require 'album'

RSpec.describe AlbumRepository do

  def reset_albums_table
    seed_sql = File.read('spec/seeds_albums.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library_test' })
    connection.exec(seed_sql)
  end


  before(:each) do 
    reset_albums_table
  end

  it 'returns all albums' do
    repo = AlbumRepository.new
    album = repo.all
    album.length # =>  1

    expect(album[0].id).to eq('1') # =>  1
    expect(album[0].title).to eq("Certified Lover Boy") # =>  'Drake'
    expect(album[0].release_year).to eq("2021") # =>  '2021'
    expect(album[0].artist_id).to eq("5") # =>  '5'
    
  end

  it 'returns "certified lover boy" album' do
    repo = AlbumRepository.new
    album = repo.find(1)

    expect(album.title).to eq("Certified Lover Boy") # =>  'Drake'
    expect(album.release_year).to eq("2021") # =>  '2021'
    expect(album.artist_id).to eq("5") # =>  '5'
    
  end

  it 'creates a new album' do
    repo = AlbumRepository.new
    album = Album.new

    album.title = 'Album_2'
    album.release_year = '2022'
    album.artist_id = '2'

    repo.create(album)

    all_albums = repo.all
    last_album = all_albums.last

    expect(last_album.title).to eq('Album_2')  
    expect(last_album.release_year).to eq('2022')  
    expect(last_album.artist_id).to eq('2')  

  end

  it 'deletes an album' do 
    repo = AlbumRepository.new
    album = repo.find(1)

    repo.delete(album.id)
    all_albums = repo.all
    expect(all_albums.length).to eq(1)
  end

  it 'updates and exisisting ID' do
    repo = AlbumRepository.new
    album = repo.find(1)

    album.title = 'Take Care'
    album.release_year = '2017'

    repo.update(album)

    # updated_album = repo.find(1)

    expect(album.title).to eq('Take Care')  
    expect(album.release_year).to eq('2017')
  end


end  
