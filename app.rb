require('sinatra')
require('sinatra/reloader')
require("sinatra/activerecord")
also_reload('lib/**/*.rb')
require('./lib/product')
require('./lib/purchase')
require('pg')
require('pry')

get('/') do
  @all_purchases = Purchase.all()
  erb(:index)
end

get ('/purchases/new') do
  erb(:purchase_form)
end

post ('/purchases') do
  name = params.fetch("name")
  new_p = Purchase.new({:name => name})
  new_p.save()

  erb(:success)
end
