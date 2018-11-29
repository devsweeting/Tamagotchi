require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('./lib/**/*.rb')
require './lib/Mrfluffles'

get ('/') do
  @list = Mrfluffles.all
  erb(:index)
end

post('/') do
  name = params["name"]
  new_cat = Mrfluffles.new(name)
  new_cat.save
  @list = Mrfluffles.all
  erb(:index)
end

get('/details/:id') do
  @cat = Mrfluffles.find(params[:id])
  erb(:details)
end

post ('/feed/:id') do
  id = params['id']
  cat_in_question = Mrfluffles.find(id)
  cat_in_question.feed
  @cat = cat_in_question
  erb(:details)
end

post ('/pet/:id') do
  id = params['id']
  cat_in_question = Mrfluffles.find(id)
  cat_in_question.pet
  @cat = cat_in_question
  erb(:details)
end

post ('/smack/:id') do
  id = params['id']
  cat_in_question = Mrfluffles.find(id)
  cat_in_question.smack
  @cat = cat_in_question
  erb(:details)
end

post ('/activities/:id') do
  id = params['id']
  cat_in_question = Mrfluffles.find(id)
  cat_in_question.activity(params['activities'])
  @cat = cat_in_question
  erb(:details)
end
