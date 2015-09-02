require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/' do
  @title = 'Jimmy\'s Pig Latin Translatory Ting'
  erb :home
end

#word.startwith?

post '/translate' do
  @input = params[:input]
  # binding.pry
  if @input.start_with?('a', 'e', 'i', 'o', 'u')
    @input.concat 'ay'
  else
    @input[1..@input.length].concat(@input[0]).concat 'ay'
  end

end
