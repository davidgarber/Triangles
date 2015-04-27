require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')

get('/') do
  erb(:index)
end

get('/results') do
  test_triangle = Triangle.new(params.fetch('side1').to_i,params.fetch('side2').to_i,params.fetch('side3').to_i)
  @isittriangle = test_triangle.triangle?()
  @triangleanswer = test_triangle.type()
  erb(:results)
end
