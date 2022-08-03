require 'recipe'
require 'database_connection'

class RecipeRepository

    # Selecting all records
    # No arguments
    def all
      # Executes the SQL query:
      sql = 'SELECT id, names, avg_time, rating FROM recipes;'
      result = DatabaseConnection.exec_params(sql, [])

      result.each do |recipe|
        output = Recipes.new
        output.id = recipe['id']
        output.names = recipe['name']
        output.avg_time = recipe['avg_time']
        output.rating = recipe['rating']

        output
      end

      
  
      # Returns an array of Student objects.
    end
  
    # Gets a single record by its ID
    # One argument: the id (number)
#     def find(id)
#       # Executes the SQL query:
#       # SELECT id, names, avg_time, rating FROM recipes; WHERE id = $1;
  
#       # Returns a single Student object.
#    end
  
    # Add more methods below for each operation you'd like to implement.
  
    # def create(student)
    # end
  
    # def update(student)
    # end
  
    # def delete(student)
    # end
  end