class BooksRepository

    # Selecting all records
    # No arguments
    def all
      books = []
      # Executes the SQL query:
      sql = 'SELECT id, title FROM books;'

      result = DatabaseConnection.exec_params(sql, [])

      result.each do |record|
        book = Books.new

        book.id = record['id']
        book.title = record['title']
        book.author_name = record['author_name']

        books << book
      end

      books
  
      # Returns an array of Student objects.
    end
  
  end