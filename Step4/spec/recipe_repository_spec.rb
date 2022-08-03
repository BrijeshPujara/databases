require 'recipe_repository'

RSpec.describe RecipeRepository do

def reset_recipes_table
    seed_sql = File.read('spec/seeds_recipes.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'recipes_directory_test' })
    connection.exec(seed_sql)
  end
  
    before(:each) do 
      reset_recipes_table
    end

    it "Returns all recipes" do
      repo = RecipeRepository.new
      recipe = repo.all

      expect(recipe[0].id).to eq '1' # =>  1
      expect(recipe[0].name).to eq 'Pasta' # =>  'Pasta'
      expect(recipe[0].avg_time).to eq '20' # =>  '20'
      expect(recipe[0].rating).to eq '4' # =>  '4'
        
    end
    




end