require 'books_repository'

RSpec.describe BooksRepository do
  
  def reset_books_table
    seed_sql = File.read('spec/seeds_students.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store' })
    connection.exec(seed_sql)
  end 

  before(:each) do 
    reset_students_table
  end

  it "returns the list of books" do 
    repo = BooksRepository.new
    books = repo.all
    expect(books).to  

    books.length # =>  2

    books[0].id # =>  1
    books[0].title # =>  'Title_1'
    books[0].author_name # =>  'Book_1'
    books[1].id # =>  2
    books[1].title # =>  'Title_2'
    books[1].author_name # =>  'Book_2'



    
end
