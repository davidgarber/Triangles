require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')

get('/') do
  erb(:index)
end

get('/results') do
  test_triangle = Triangle.new(params.fetch('side1'),params.fetch('side2'),params.fetch('side3'))
  @isittriangle = test_triangle.type()
  erb(:results)
end
