require 'sinatra'
require 'sinatra/activerecord'

set :sessions, true

set :database, "sqlite3:artdatabase.sqlite3"

require './models'

get "/" do
	@artworks = Artwork.all
	@artists = Artist.all
	erb :index
end

get '/artist/:id' do
	@artist = Artist.find(params[:id])
	erb :artist
end

get '/artwork/:id' do
	@artwork = Artwork.find(params[:id])
	erb :artwork
end
