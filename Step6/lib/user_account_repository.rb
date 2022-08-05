require_relative './user_account.rb'

class UserRepository

    # Selecting all records
    # No arguments
    def all
      arr = []
      # Executes the SQL query:
      sql = 'SELECT id, username, email FROM user_account;'
      result = DatabaseConnection.exec_params(sql, [])

      result.each do |user|
        output = User.new

        output.id = user['id']
        output.username = user['username']
        output.email = user['email']

        arr << output
      end

      arr
  
      # Returns an array of Student objects.
    end
  
    # Gets a single record by its ID
    # One argument: the id (number)
    def find(id)
      # Executes the SQL query:
      # SELECT id, name, cohort_name FROM students WHERE id = $1;
  
      # Returns a single Student object.
    end
  
    # Add more methods below for each operation you'd like to implement.
  
    # def create(student)
    # end
  
    # def update(student)
    # end
  
    # def delete(student)
    # end
  end