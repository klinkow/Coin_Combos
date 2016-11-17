require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combos')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/change') do
  cents = params.fetch('cents_input').to_i().coin_combos()
  @quarters = cents[0]
  @dimes = cents[1]
  @nickels = cents[2]
  @pennies = cents[3]
  erb(:result)
end
