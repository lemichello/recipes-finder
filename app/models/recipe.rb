class Recipe
  include HTTParty
  
  base_uri 'http://food2fork.com/api'

  default_params key: 'f1bdbae9afc50f54831ea12983a3d630'
  format :json

  def self.for(keyword)
    get('/search', query: { q: keyword })['recipes']
  end
end