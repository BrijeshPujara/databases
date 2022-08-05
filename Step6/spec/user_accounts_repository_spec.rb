require 'user_account_repository'

RSpec.describe UserRepository do
  
  def reset_user_account_table
    seed_sql = File.read('seeds_social.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'social_network' })
    connection.exec(seed_sql)
  end


    before(:each) do 
    reset_user_account_table
    end

  it "gets all users in database" do
    repo = UserRepository.new
    users = repo.all
    users.length # =>  3

    expect(users[0].id).to eq("1") # =>  1
    expect(users[0].username).to eq("Brijesh") # =>  'Brijesh'
    expect(users[0].email).to eq("brijesh7@hotmail.co.uk") # =>  'brijesh7@hotmail.co.uk'

    expect(users[1].id).to eq("2") # =>  2
    expect(users[1].username).to eq("Joe") # =>  'Joe'
    expect(users[1].email).to eq("j.bloggs@gmail.com") # =>  'j.bloggs@gmail.com'

    expect(users[2].id).to eq("3") # =>  3
    expect(users[2].username).to eq("Bloggs") # =>  'Bloggs'
    expect(users[2].email).to eq("1234@gmail.com") # =>  '1234@gmail.com'
  end
  

  


    
end
