require_relative './album.rb'

class AlbumRepository
    # Selecting all records
    # No arguments
    def all
      albums = []
      # Executes the SQL query:
      sql = 'SELECT id, title, release_year, artist_id FROM albums;'
      result = DatabaseConnection.exec_params(sql, [])

      result.each do |record|
        album = Album.new

        album.id = record['id']
        album.title = record['title']
        album.release_year = record['release_year']
        album.artist_id = record['artist_id']

        albums << album
      end

      albums
      # Returns an array of Student objects.
    end

    def find(id)
      # Executes the SQL query:
      sql = 'SELECT id, title, release_year, artist_id FROM albums WHERE id = $1;'
      params = [id]
      result = DatabaseConnection.exec_params(sql, params)
      record = result[0]

      album = Album.new
      album.id = record['id']
      album.title = record['title']
      album.release_year = record['release_year']
      album.artist_id = record['artist_id']

     p album
      # Returns a single Student object.
   end
end