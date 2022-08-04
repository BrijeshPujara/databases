require_relative './recipe.rb'
require_relative './database_connection.rb'

class RecipeRepository

    # Selecting all records
    # No arguments
    def all
        arr = []
        # Executes the SQL query:
        sql = 'SELECT * FROM recipes;'
        result = DatabaseConnection.exec_params(sql, [])

        result.each do |recipe|
            dish = Recipes.new

            dish.id = recipe['id']
            dish.names = recipe['names']
            dish.avg_time = recipe['avg_time']
            dish.rating = recipe['rating']

            arr << dish
        end

        arr
        # Returns an array of Student objects.
        end
  
    # Gets a single record by its ID
    # One argument: the id (number)
    def find(id)
      # Executes the SQL query:
      sql = 'SELECT id, names, avg_time, rating FROM recipes WHERE id = $1;'
      params = [id]
      result = DatabaseConnection.exec_params(sql, params)
      recipe = result[0]
  
      # Returns a single Student object.
      dish = Recipes.new

        dish.id = recipe['id']
        dish.names = recipe['names']
        dish.avg_time = recipe['avg_time']
        dish.rating = recipe['rating']

        dish

   end
  
    # Add more methods below for each operation you'd like to implement.
  
    # def create(student)
    # end
  
    # def update(student)
    # end
  
    # def delete(student)
    # end
  end





